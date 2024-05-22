import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/warning_sheets/core_sheets.dart';
import 'package:varlik_yonetimi/screens/main_screen/main_screen.dart';

class LoginAuthService {
  final userCollection = FirebaseFirestore.instance.collection("users");
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> login(BuildContext context, {required String email, required String password}) async {
    final navigator = Navigator.of(context);
    try {
      final UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      if (userCredential.user != null) {
        Fluttertoast.showToast(msg: "Login successful");
        navigator.push(MaterialPageRoute(
          builder: (context) => const MainScreenManagement(),
        ));
      }
    } catch (e) {
      if (e is FirebaseAuthException) {
        // ignore: use_build_context_synchronously
        ValidatorBottomSheet().show(context, "Incorrect login. Please check your email and password");
      } else {
        log("Login error: $e");
      }
    }
  }

  Future<User?> signInWithGoogle() async {
    final gUser = await GoogleSignIn().signIn();
    final gAuth = await gUser!.authentication;
    final credential = GoogleAuthProvider.credential(accessToken: gAuth.accessToken, idToken: gAuth.idToken);
    final UserCredential userCredential = await _firebaseAuth.signInWithCredential(credential);

    return userCredential.user;
  }
}

/*Future<void> signInWithGoogle(BuildContext context) async {
    final gUser = await GoogleSignIn().signIn();
    final gAuth = await gUser!.authentication;
    final credential = GoogleAuthProvider.credential(accessToken: gAuth.accessToken, idToken: gAuth.idToken);
    final UserCredential userGoogleCredential = await _firebaseAuth.signInWithCredential(credential);
    final navigator = Navigator.of(context);
    try {
      final UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(
          email: userGoogleCredential.user!.email.toString(),
          password: userGoogleCredential.user!.displayName.toString());
      if (userCredential.user != null) {
        Fluttertoast.showToast(msg: "Login successful");
        navigator.push(MaterialPageRoute(
          builder: (context) => const MainScreenManagement(),
        ));
      }
    } catch (e) {
      SignUpAuthService().registerUser(
          userUID: userGoogleCredential.user!.uid,
          name: userGoogleCredential.user!.displayName.toString(),
          surname: userGoogleCredential.user!.displayName.toString(),
          email: userGoogleCredential.user!.email.toString(),
          password: userGoogleCredential.user!.displayName.toString());
      signInWithGoogle(context);
    }
  } */
