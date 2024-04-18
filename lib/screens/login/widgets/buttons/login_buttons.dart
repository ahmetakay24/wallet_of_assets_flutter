import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:varlik_yonetimi/core/core_methods.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/core_sheets.dart';
import 'package:varlik_yonetimi/screens/forgot_password/forgot_password.dart';
import 'package:varlik_yonetimi/screens/login/login.dart';
import 'package:varlik_yonetimi/screens/login/services/login_services.dart';
import 'package:varlik_yonetimi/screens/main_screen/main_screen.dart';
import 'package:varlik_yonetimi/screens/signup/sign_up.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  late final TextEditingController _emailController = LoginScreen.of(context)!.loginEmailC;
  late final TextEditingController _passwordController = LoginScreen.of(context)!.loginPasswordC;

  void loginValidation() {
    if (validateEmail(_emailController.text) == false && validatePassword(_passwordController.text) == true) {
      ValidatorBottomSheet().show(context, "Please enter your email.");
    } else if (validateEmail(_emailController.text) == true && validatePassword(_passwordController.text) == false) {
      ValidatorBottomSheet().show(context, "Please enter your password.");
    } else if (validateEmail(_emailController.text) == false && validatePassword(_passwordController.text) == false) {
      ValidatorBottomSheet().show(context, "Please enter your email and password.");
    } else {
      LoginAuthService().login(context, email: _emailController.text, password: _passwordController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        loginValidation();
      },
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

//LoginAuthService().login(context, email: _emailController.text, password: _passwordController.text)

class LoginScreenSignUpButton extends StatelessWidget {
  const LoginScreenSignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () =>
            Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const SignUpScreen())),
        child: const Text(
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
      onPressed: () => LoginAuthService().signInWithGoogle().then((value) => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const MainScreen(), settings: RouteSettings(arguments: value)))),
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
      onPressed: () => Navigator.push(
          context, PageTransition(type: PageTransitionType.rightToLeft, child: const ForgotPasswordScreen())),
      child: Text(
        "Forgot password?",
        style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 25),
      ),
    );
  }
}
