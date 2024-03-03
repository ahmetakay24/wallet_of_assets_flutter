import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: VarlikYonetimiColors().goldColors,
      ),
      child: Text(
        "Login",
        style: TextStyle(color: VarlikYonetimiColors().blueColor, fontSize: 30),
      ),
    );
  }
}

class LoginScreenSignUpButton extends StatelessWidget {
  const LoginScreenSignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextButton(
        onPressed: null,
        child: Text(
          "Sign Up",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ));
  }
}

class LoginWithGoogleButton extends StatelessWidget {
  const LoginWithGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
      child: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Image(image: AssetImage("assets/image/logos/google.png")),
      ),
    ));
  }
}

class LoginForgotPasswordButton extends StatelessWidget {
  const LoginForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Forgot password?",
        style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 25),
      ),
    );
  }
}

