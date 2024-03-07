import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/screens/forgot_password/widgets/forgot_password_resources.dart';

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
        hintText: ForgotPasswordTurkishItems().forgotPasswordEmailTextFieldText,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
