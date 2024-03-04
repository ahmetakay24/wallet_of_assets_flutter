import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_methods.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/screens/signup/widgets/buttons/signup_buttons.dart';
import 'package:varlik_yonetimi/screens/signup/widgets/text_form_fields/sign_up_text_form_fields.dart';
import 'package:varlik_yonetimi/screens/signup/widgets/texts/sign_up_texts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: VarlikYonetimiColors().blueColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsiveResizer(DeviceSize(context).height, 3.92)),
        child: const Column(
          children: [
            Spacer(flex: 10),
            Expanded(
              flex: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SignUpTitleText(), SignUpSubtitleText()],
              ),
            ),
            Spacer(
              flex: 5,
            ),
            Expanded(
              flex: 40,
              child: Column(
                children: [
                  Expanded(
                    child: SignUpNameTextFormField(),
                  ),
                  Expanded(
                    child: SignUpSurnameTextField(),
                  ),
                  Expanded(
                    child: SignUpEmailTextFormField(),
                  ),
                  Expanded(child: SignUpPasswordTextFormField()),
                ],
              ),
            ),
            Spacer(
              flex: 5,
            ),
            Expanded(flex: 7, child: SignUpCreateAccountButton()),
            Expanded(
              flex: 7,
              child: SignUpOrWithLine(),
            ),
            Expanded(flex: 7, child: SignUpGoogleButton()),
            Spacer(
              flex: 10,
            ),
            Expanded(
              flex: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [SignUpAlreadyAccountText(), SignUpLoginButton()],
              ),
            ),
            Spacer(
              flex: 10,
            ),
          ],
        ),
      ),
    );
  }
}
