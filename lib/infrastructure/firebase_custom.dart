
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';



final databaseRef = FirebaseFirestore.instance.collection('users'); //database reference object
CollectionReference usersRef = FirebaseFirestore.instance.collection('users');
FirebaseAuth auth = FirebaseAuth.instance;


class FirebaseCustom {

      Future<void> addUser(userName, uid, college, email) {

        return databaseRef.doc(uid).set({'user_name': userName, 'user_college': college, 'user_email': email,
          });

    }



}



