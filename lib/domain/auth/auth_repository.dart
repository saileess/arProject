

import 'package:dartz/dartz.dart';
import 'package:major_project/infrastructure/dtos/user/user_dto.dart';


abstract class AuthRepository {
  Future<Either<String, UserDto>> signUp(
      {required String email,
      required String username,
      required String password,
      required String college,
      });

  Future<Either<String, UserDto>> login(
      {required String email, 
      required String password});

  Future<bool> checkExistUsername({required String username});

  Future<bool> forgotPassword({required String email});

  Future<Either<String, UserDto>> signInWithGoogle();


  Future<Either<String, bool>> resetPassword(
      {required String newPassword, required String oobCode});

      Future<UserDto?> authenticateUser();
}
