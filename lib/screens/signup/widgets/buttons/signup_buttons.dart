import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/screens/login/login.dart';
import 'package:varlik_yonetimi/screens/login/widgets/buttons/login_buttons.dart';
import 'package:varlik_yonetimi/screens/signup/services/signup_auth_service.dart';
import 'package:varlik_yonetimi/screens/signup/sign_up.dart';

class SignUpCreateAccountButton extends StatefulWidget {
  const SignUpCreateAccountButton({
    super.key,
  });

  @override
  State<SignUpCreateAccountButton> createState() => _SignUpCreateAccountButtonState();
}

class _SignUpCreateAccountButtonState extends State<SignUpCreateAccountButton> {
  late final TextEditingController _nameController = SignUpScreen.of(context)!.signupNameC;
  late final TextEditingController _surnameController = SignUpScreen.of(context)!.signupSurnameC;
  late final TextEditingController _emailController = SignUpScreen.of(context)!.signupEmailC;
  late final TextEditingController _passwordController = SignUpScreen.of(context)!.signupPasswordC;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: ElevatedButton(
                onPressed: () => SignUpAuthService().signUp(context,
                    name: _nameController.text,
                    surname: _surnameController.text,
                    email: _emailController.text,
                    password: _passwordController.text),
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
        onPressed: () =>
            Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: const LoginScreen())),
        child: const Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ));
  }
}
