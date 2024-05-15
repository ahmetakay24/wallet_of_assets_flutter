import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class LoginPasswordTextFormField extends StatefulWidget {
  final TextEditingController passwordController;

  const LoginPasswordTextFormField({super.key, required this.passwordController});

  @override
  State<LoginPasswordTextFormField> createState() => _LoginPasswordTextFormFieldState();
}

class _LoginPasswordTextFormFieldState extends State<LoginPasswordTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.passwordController,
      keyboardType: TextInputType.visiblePassword,
      autofillHints: const [AutofillHints.password],
      obscureText: _obscureText,
      style: const TextStyle(fontSize: 20, color: Colors.white),
      decoration: InputDecoration(
          hintText: "Password",
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
            borderRadius: BorderRadius.circular(15),
          ),
          suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                color: VarlikYonetimiColors().goldColors,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              })),
    );
  }
}

class LoginEmailTextFormField extends StatelessWidget {
  final TextEditingController emailController;
  const LoginEmailTextFormField({super.key, required this.emailController});

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
