import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:major_project/domain/auth/auth_repository.dart';
import 'package:major_project/infrastructure/dtos/user/user_dto.dart';
import '../../domain/constants/string_constants.dart';

class IAuthRepository extends AuthRepository{
  final _firestore = FirebaseFirestore.instance;


  @override
  Future<bool> forgotPassword({required String email}) async {
    bool isLinkSent = false;
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: email)
          .then((value) => isLinkSent = true);

      return isLinkSent;
    } catch (e) {
      return isLinkSent;
    }
  }


//login
  @override
  Future<Either<String, UserDto>> login({
    required String email, 
    required String password}) async 
    {
      String? emailRes;
      UserDto? userDto;
    try {
      final res = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, 
        password: password);

      final uid = res.user!.uid;
      emailRes = res.user!.email;

      DocumentSnapshot<Map<String, dynamic>> response = await _firestore.collection('users').doc(uid).get();
      if(response.data() != null){
    userDto  = UserDto.fromJson(response.data()!); 

    return right(userDto);
      }

  

    } on FirebaseAuthException catch (e) {
      String error = '';
      if (e.code.contains('invalid-email')) {
        error = ErrorConstants.invalidEmail;
      } else if (e.code.contains('user-disabled')) {
        error = ErrorConstants.userDisabled;
      } else if (e.code.contains('user-not-found')) {
        error = ErrorConstants.userNotFound;
      } else if (e.code.contains('wrong-password')) {
        error = ErrorConstants.wrongPassword;
      } else {
        error = e.code;
      }
      return left(error);
    } 
      return left("error");
  }



  @override
  Future<Either<String, bool>> resetPassword(
      {required String newPassword, required String oobCode}) async {
    try {
      await FirebaseAuth.instance
          .confirmPasswordReset(code: oobCode, newPassword: newPassword);
      return right(true);
    } on FirebaseAuthException catch (e) {
      String error = '';
      if (e.code.contains('expired-action-code')) {
        error = ErrorConstants.expiredActionCode;
      } else if (e.code.contains('invalid-action-code')) {
        error = ErrorConstants.invalidActionCode;
      } else if (e.code.contains('user-disabled')) {
        error = ErrorConstants.userDisabled;
      } else if (e.code.contains('user-not-found')) {
        error = ErrorConstants.userNotFound;
      } else if (e.code.contains('weak-password')) {
        error = ErrorConstants.weakPassword;
      } else {
        error = e.code;
      }
      return left(error);
    } catch (error) {
      return left(ErrorConstants.genericError);
    }
  }



//sign up
  @override
  Future<Either<String, UserDto>> signUp({
    required String email, 
    required String username, 
    required String password,
    required String college,
    }) async{
    String? userUid;
    bool isSuccess = false;
    
    try{ 
final output = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email, 
      password: password);
      isSuccess = true;
        userUid = output.user!.uid;
        debugPrint(userUid);
        
        UserDto userDto = UserDto(id: userUid, username: username, email: email, college: college, createdAt: DateTime.now(), updatedAt: DateTime.now());
    
    await _firestore.collection('users').doc(userUid).set(userDto.customToJson);

return right(userDto);
    
    }on FirebaseAuthException catch(e){

      String error = '';
      if (e.code.contains('email-already-in-use')) {
        error = ErrorConstants.emailExist;
      }
      if (e.code.contains('invalid-email')) {
        error = ErrorConstants.invalidEmail;
      }
      if (e.code.contains('operation-not-allowed')) {
        error = ErrorConstants.userDisabled;
      }
      if (e.code.contains('weak-password')) {
        error = ErrorConstants.wrongPassword;
      } else {
        error = e.code;
      }
      return left(error);
    }

  }
  







  Future<String> signOut()async{
    try{
      await FirebaseAuth.instance.signOut();
      }
      catch (e){
        throw Exception(e);
      }
      return "user logged out";
  }




  @override
  Future<bool> checkExistUsername({required String username}) async {
    try {
      final QuerySnapshot<Map<String, dynamic>> response = await _firestore
          .collection("users")
          .where('username', isEqualTo: username)
          .get();
      if (response.docs.isNotEmpty) {
        return true;
      }
      return false;
    } catch (e) {
      return true;
    }
  }

  


Future<Either<String, UserDto>> signInWithGoogle() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    UserDto? userDto;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
            await auth.signInWithCredential(credential);

        user = userCredential.user;
        print(user);
        userDto= UserDto(id: user!.uid, username: user.displayName!, email: user.email!, college: '', createdAt: DateTime.now(), updatedAt: DateTime.now(), profileUrl: user.photoURL);
        return right(userDto);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          return left(ErrorConstants.emailExist);
        } else if (e.code == 'invalid-credential') {
          return left(ErrorConstants.failedGoogleLogin);
        }
      } catch (e) {
        return left(ErrorConstants.failedGoogleLogin);
      }
      
    }
    return right(userDto!);
    }


@override
  Future<UserDto?> authenticateUser() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      if (user == null) {
        final completer = Completer<User?>();
        FirebaseAuth.instance.authStateChanges().listen((event) {
          if (event != null) {
            completer.complete(event);
          } else {
            Future.delayed(const Duration(seconds: 2)).then((value) =>
                {if (!completer.isCompleted) completer.complete(event)});
}
        });
        user = await completer.future;
      }
      final userObject = await _firestore
          .collection('users')
          .doc(user!.uid)
          .get();
      final userDto = UserDto.fromJson(userObject.data()!);
      return userDto;
    } catch (err) {
      rethrow;
    }
  }


}
