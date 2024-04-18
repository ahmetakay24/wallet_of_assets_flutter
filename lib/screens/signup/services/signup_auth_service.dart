import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/screens/login/login.dart';

class SignUpAuthService {
  final userCollection = FirebaseFirestore.instance.collection("users");
  final firebaseAuth = FirebaseAuth.instance;

  Future<void> signUp(
    BuildContext context, {
    required String name,
    required String surname,
    required String email,
    required String password,
  }) async {
    try {
      final navigator = Navigator.of(context);
      final UserCredential userCredential =
          await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        _registerUser(
            userUID: userCredential.user!.uid, name: name, surname: surname, email: email, password: password);
        Fluttertoast.showToast(msg: "Account Created");
        navigator.push(MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ));
      }
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.message!);
    }
  }

  Future<void> _registerUser({
    required String userUID,
    required String name,
    required String surname,
    required String email,
    required String password,
  }) async {
    await userCollection.doc().set({
      "userUID": userUID,
      "email": email,
      "name": name,
      "password": password,
      "surname": surname,
    });
  }
}
