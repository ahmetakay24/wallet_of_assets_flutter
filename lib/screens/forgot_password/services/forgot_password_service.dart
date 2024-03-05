import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';
import 'package:varlik_yonetimi/screens/login/login.dart';

class ForgotPasswordAuthService {
  Future<void> passwordReset(BuildContext context, String email) async {
    final pageTransition =
        Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const LoginScreen()));
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      Fluttertoast.showToast(msg: "Reset email has been sent", toastLength: Toast.LENGTH_LONG);
      pageTransition;
    } on FirebaseAuthException catch (e) {
      Fluttertoast.showToast(msg: e.message!, toastLength: Toast.LENGTH_LONG);
    }
  }
}
