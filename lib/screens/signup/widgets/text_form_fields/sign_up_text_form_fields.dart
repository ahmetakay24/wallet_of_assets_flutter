import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class SignUpPasswordTextFormField extends StatefulWidget {
  final TextEditingController passwordController;

  const SignUpPasswordTextFormField({
    Key? key,
    required this.passwordController,
  }) : super(key: key);

  @override
  State<SignUpPasswordTextFormField> createState() => _SignUpPasswordTextFormFieldState();
}

class _SignUpPasswordTextFormFieldState extends State<SignUpPasswordTextFormField> {
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
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
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
          },
        ),
      ),
    );
  }
}

class SignUpNameTextFormField extends StatelessWidget {
  final TextEditingController nameController;

  const SignUpNameTextFormField({
    Key? key,
    required this.nameController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: nameController,
      keyboardType: TextInputType.name,
      autofillHints: const [AutofillHints.name],
      style: const TextStyle(fontSize: 20, color: Colors.white),
      decoration: InputDecoration(
        hintText: "Name",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class SignUpSurnameTextField extends StatelessWidget {
  final TextEditingController surnameController;

  const SignUpSurnameTextField({
    Key? key,
    required this.surnameController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: surnameController,
      keyboardType: TextInputType.text,
      autofillHints: const [AutofillHints.givenName],
      style: const TextStyle(fontSize: 20, color: Colors.white),
      decoration: InputDecoration(
        hintText: "Surname",
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class SignUpEmailTextFormField extends StatelessWidget {
  final TextEditingController emailController;

  const SignUpEmailTextFormField({
    Key? key,
    required this.emailController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      style: const TextStyle(fontSize: 20, color: Colors.white),
      decoration: InputDecoration(
        hintText: "Email",
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
