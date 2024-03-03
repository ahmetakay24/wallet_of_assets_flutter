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
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: VarlikYonetimiColors().blueColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsiveResizer(DeviceSize(context).height, 3.92)),
        child: const Column(children: [
          Spacer(
            flex: 10,
          ),
          Expanded(
            flex: 10,
            child: LoginLogoHeader(),
          ),
          Spacer(
            flex: 2,
          ),
          Expanded(
              flex: 17,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 20,
                    child: LoginEmailTextFormField(),
                  ),
                  Spacer(
                    flex: 2,
                  ),
                  Expanded(
                    flex: 20,
                    child: LoginPasswordTextFormField(),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [LoginForgotPasswordButton()],
                    ),
                  ),
                  Spacer(
                    flex: 6,
                  ),
                ],
              )),
          Spacer(
            flex: 2,
          ),
          Expanded(
              flex: 5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(child: LoginButton()),
                ],
              )),
          Expanded(flex: 5, child: LoginOrWithSection()),
          Expanded(
              flex: 5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LoginWithGoogleButton(),
                ],
              )),
          Spacer(
            flex: 12,
          ),
          Expanded(
              flex: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [LoginDontHaveAnAccountText(), LoginScreenSignUpButton()],
              )),
          Spacer(flex: 7),
        ]),
      ),
    );
  }
}
