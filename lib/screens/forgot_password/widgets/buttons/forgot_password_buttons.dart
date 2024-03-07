import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/screens/forgot_password/services/forgot_password_service.dart';
import 'package:varlik_yonetimi/screens/forgot_password/widgets/forgot_password_resources.dart';

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    super.key,
    required this.forgotPasswordEmailC,
  });

  final TextEditingController forgotPasswordEmailC;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: ElevatedButton(
                onPressed: () {
                  ForgotPasswordAuthService().passwordReset(context, forgotPasswordEmailC.text.trim());
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
