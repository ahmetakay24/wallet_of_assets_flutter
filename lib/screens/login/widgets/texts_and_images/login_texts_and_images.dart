import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class LoginOrWithSection extends StatelessWidget {
  const LoginOrWithSection({
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
            child: Text(
              "Or Login with",
              style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 22),
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

class LoginDontHaveAnAccountText extends StatelessWidget {
  const LoginDontHaveAnAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Don't have an account?",
      style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 25),
    );
  }
}

class LoginLogoHeader extends StatelessWidget {
  const LoginLogoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage("assets/image/logos/woa_logo.png"),
    );
  }
}