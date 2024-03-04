import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/screens/login/widgets/buttons/login_buttons.dart';

class SignUpCreateAccountButton extends StatelessWidget {
  const SignUpCreateAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: VarlikYonetimiColors().goldColors,
                ),
                child: Text(
                  "Create Account",
                  style: TextStyle(color: VarlikYonetimiColors().blueColor, fontSize: 30),
                ))),
      ],
    );
  }
}

class SignUpGoogleButton extends StatelessWidget {
  const SignUpGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        LoginWithGoogleButton(),
      ],
    );
  }
}

class SignUpLoginButton extends StatelessWidget {
  const SignUpLoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: const Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ));
  }
}