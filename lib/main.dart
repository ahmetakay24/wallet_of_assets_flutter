import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/screens/signup/sign_up.dart';


void main() {
  runApp(const VarlikYonetimi());
}

class VarlikYonetimi extends StatelessWidget {
  const VarlikYonetimi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "CormorantGaramond"),
      home: const SafeArea(child: SignUpScreen()),
    );
  }
}
