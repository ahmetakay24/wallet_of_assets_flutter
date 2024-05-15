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

  // ignore: library_private_types_in_public_api
  static _SignUpScreenState? of(BuildContext context) => context.findAncestorStateOfType<_SignUpScreenState>();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final signupNameC = TextEditingController();
  final signupSurnameC = TextEditingController();
  final signupEmailC = TextEditingController();
  final signupPasswordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: VarlikYonetimiColors().blueColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: responsiveResizer(DeviceSize(context).height, 3.92)),
          child: Column(
            children: [
              const Spacer(flex: 10),
              const Expanded(
                flex: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SignUpTitleText(), SignUpSubtitleText()],
                ),
              ),
              const Spacer(
                flex: 5,
              ),
              Expanded(
                flex: 40,
                child: Column(
                  children: [
                    Expanded(
                      flex: 9,
                      child: SignUpNameTextFormField(nameController: signupNameC),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 9,
                      child: SignUpSurnameTextField(surnameController: signupSurnameC),
                    ),
                    const Spacer(),
                    Expanded(
                      flex: 9,
                      child: SignUpEmailTextFormField(emailController: signupEmailC),
                    ),
                    const Spacer(),
                    Expanded(
                        flex: 9,
                        child: SignUpPasswordTextFormField(
                          passwordController: signupPasswordC,
                        )),
                  ],
                ),
              ),
              const Spacer(
                flex: 5,
              ),
              const Expanded(flex: 10, child: SignUpCreateAccountButton()),
              const Expanded(
                flex: 7,
                child: SignUpOrWithLine(),
              ),
              const Expanded(flex: 10, child: SignUpGoogleButton()),
              const Spacer(
                flex: 10,
              ),
              const Expanded(
                flex: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [SignUpAlreadyAccountText(), SignUpLoginButton()],
                ),
              ),
              const Spacer(
                flex: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
