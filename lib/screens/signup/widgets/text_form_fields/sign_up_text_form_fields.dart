import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';


class SignUpPasswordTextFormField extends StatefulWidget {
  const SignUpPasswordTextFormField({
    super.key,
  });

  @override
  State<SignUpPasswordTextFormField> createState() => _SignUpPasswordTextFormFieldState();
}

class _SignUpPasswordTextFormFieldState extends State<SignUpPasswordTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      autofillHints: const [AutofillHints.password],
      cursorColor: VarlikYonetimiColors().goldColors,
      obscureText: _obscureText,
      style: const TextStyle(fontSize: 20, color: Colors.white),
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          hintText: "Password",
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
          filled: true,
          fillColor: Colors.transparent,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
            borderRadius: BorderRadius.circular(15),
          ),
          suffixIcon: IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
                color: Colors.amber,
              ),
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              })),
    );
  }
}

class SignUpNameTextFormField extends StatelessWidget {
  const SignUpNameTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.name,
      cursorColor: VarlikYonetimiColors().goldColors,
      autofillHints: const [AutofillHints.name],
      style: const TextStyle(fontSize: 20, color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: "Name",
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        filled: true,
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class SignUpSurnameTextField extends StatelessWidget {
  const SignUpSurnameTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      autofillHints: const [AutofillHints.givenName],
      cursorColor: VarlikYonetimiColors().goldColors,
      style: const TextStyle(fontSize: 20, color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: "Surname",
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        filled: true,
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class SignUpEmailTextFormField extends StatelessWidget {
  const SignUpEmailTextFormField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofillHints: const [AutofillHints.email],
      cursorColor: VarlikYonetimiColors().goldColors,
      style: const TextStyle(fontSize: 20, color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        hintText: "Email",
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        filled: true,
        fillColor: Colors.transparent,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

