import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_methods.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/screens/login/widgets/Buttons/login_buttons.dart';
import 'package:varlik_yonetimi/screens/login/widgets/text_form_fields/login_text_form_fields.dart';
import 'package:varlik_yonetimi/screens/login/widgets/texts_and_images/login_texts_and_images.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

  // ignore: library_private_types_in_public_api
  static _LoginScreenState? of(BuildContext context) => context.findAncestorStateOfType<_LoginScreenState>();
}

class _LoginScreenState extends State<LoginScreen> {
  final loginEmailC = TextEditingController();
  final loginPasswordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: VarlikYonetimiColors().blueColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsiveResizer(DeviceSize(context).height, 3.92)),
        child: Column(children: [
          const Spacer(
            flex: 8,
          ),
          const Expanded(
            flex: 10,
            child: LoginLogoHeader(),
          ),
          const Spacer(
            flex: 2,
          ),
          Expanded(
              flex: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 20,
                    child: LoginEmailTextFormField(
                      emailController: loginEmailC,
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  Expanded(
                    flex: 20,
                    child: LoginPasswordTextFormField(passwordController: loginPasswordC),
                  ),
                  const Spacer(),
                  const Expanded(
                    flex: 15,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [LoginForgotPasswordButton()],
                    ),
                  ),
                  const Spacer(
                    flex: 6,
                  ),
                ],
              )),
          const Spacer(
            flex: 2,
          ),
          const Expanded(
              flex: 5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(child: LoginButton()),
                ],
              )),
          const Expanded(flex: 5, child: LoginOrWithSection()),
          const Expanded(
              flex: 5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LoginWithGoogleButton(),
                ],
              )),
          const Spacer(
            flex: 7,
          ),
          const Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [LoginDontHaveAnAccountText(), LoginScreenSignUpButton()],
              )),
          const Spacer(flex: 7),
        ]),
      ),
    );
  }
}
