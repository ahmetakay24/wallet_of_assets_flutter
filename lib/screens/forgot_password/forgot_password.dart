import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_methods.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/screens/forgot_password/widgets/buttons/forgot_password_buttons.dart';
import 'package:varlik_yonetimi/screens/forgot_password/widgets/text_form_fields/forgot_password_text_form_field.dart';
import 'package:varlik_yonetimi/screens/forgot_password/widgets/texts_and_appbar/forgot_password_texts_and_appbar.dart';

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
      appBar: const ForgotPasswordAppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: responsiveResizer(DeviceSize(context).height, 3.92)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 10,
            ),
            const Expanded(
              flex: 2,
              child: ForgotPasswordTitle(),
            ),
            const Expanded(
              flex: 2,
              child: ForgotPasswordSubtitle(),
            ),
            const Spacer(),
            Expanded(flex: 2, child: ForgotPasswordEmailTextFormField(emailController: forgotPasswordEmailC)),
            const Spacer(
              flex: 2,
            ),
            Expanded(
              flex: 2,
              child: ForgotPasswordButton(forgotPasswordEmailC: forgotPasswordEmailC),
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
