import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:varlik_yonetimi/core/core_methods.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/screens/forgot_password/services/forgot_password_service.dart';
import 'package:varlik_yonetimi/screens/login/login.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();

  // ignore: library_private_types_in_public_api
  static _ForgotPasswordScreenState? of(BuildContext context) =>
      context.findAncestorStateOfType<_ForgotPasswordScreenState>();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final forgotPasswordEmailC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15, top: 15),
          child: IconButton(
              onPressed: () => Navigator.push(
                  context, PageTransition(type: PageTransitionType.leftToRight, child: const LoginScreen())),
              icon: Icon(
                Icons.arrow_back_ios,
                color: VarlikYonetimiColors().goldColors,
                size: 35,
              )),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsiveResizer(DeviceSize(context).height, 3.92)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 10,
            ),
            Expanded(
              flex: 2,
              child: Text(
                "Enter Your Email",
                style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 50),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                "You will receive instructions for reseting password",
                style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 22),
              ),
            ),
            const Spacer(),
            Expanded(flex: 2, child: ForgotPasswordEmailTextFormField(emailController: forgotPasswordEmailC)),
            const Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 2,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            ForgotPasswordAuthService().passwordReset(context,forgotPasswordEmailC.text.trim());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: VarlikYonetimiColors().goldColors,
                          ),
                          child: Text(
                            "Reset",
                            style: TextStyle(color: VarlikYonetimiColors().blueColor, fontSize: 30),
                          ))),
                ],
              ),
            ),
            const Spacer(
              flex: 10,
            ),
          ],
        ),
      ),
    ));
  }
}

class ForgotPasswordEmailTextFormField extends StatelessWidget {
  final TextEditingController emailController;
  const ForgotPasswordEmailTextFormField({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      style: const TextStyle(fontSize: 20, color: Colors.white),
      cursorColor: VarlikYonetimiColors().goldColors,
      decoration: InputDecoration(
        hintText: "Email",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
