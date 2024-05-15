import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_methods.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/warning_sheets/core_sheets.dart';
import 'package:varlik_yonetimi/screens/forgot_password/services/forgot_password_service.dart';
import 'package:varlik_yonetimi/screens/forgot_password/widgets/forgot_password_resources.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    super.key,
    required this.forgotPasswordEmailC,
  });
  final TextEditingController forgotPasswordEmailC;

  void forgotPasswordValidation() {}

  @override
  Widget build(BuildContext context) {

    void forgotPasswordValidation() {
      if (validateEmail(forgotPasswordEmailC.text) == false) {
        ValidatorBottomSheet().show(context, "Please enter your email.");
      } else {
        ForgotPasswordAuthService().passwordReset(context, forgotPasswordEmailC.text.trim());
      }
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: ElevatedButton(
                onPressed: () {
                  forgotPasswordValidation();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: VarlikYonetimiColors().goldColors,
                ),
                child: Text(
                  ForgotPasswordTurkishItems().forgotPasswordButtonText,
                  style: TextStyle(color: VarlikYonetimiColors().blueColor, fontSize: 30),
                ))),
      ],
    );
  }
}
