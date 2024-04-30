import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class SignUpAlreadyAccountText extends StatelessWidget {
  const SignUpAlreadyAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("Already have an account?", style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 25));
  }
}

class SignUpOrWithLine extends StatelessWidget {
  const SignUpOrWithLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Divider(
              color: VarlikYonetimiColors().goldColors,
            )),
        Expanded(
          flex: 2,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                "Or Sign up with",
                style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 20),
              ),
            ),
          ),
        ),
        Expanded(
            flex: 2,
            child: Divider(
              color: VarlikYonetimiColors().goldColors,
            )),
      ],
    );
  }
}

class SignUpSubtitleText extends StatelessWidget {
  const SignUpSubtitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Create an account to view and manage your assets.",
      style: TextStyle(fontSize: 21, color: VarlikYonetimiColors().goldColors),
    );
  }
}

class SignUpTitleText extends StatelessWidget {
  const SignUpTitleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Create Your Account",
      style: TextStyle(fontSize: 40, color: VarlikYonetimiColors().goldColors),
    );
  }
}

