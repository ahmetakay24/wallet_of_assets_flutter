import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_methods.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/screens/login/widgets/Buttons/login_buttons.dart';

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
        child: Expanded(
          child: Column(
            children: [
              const Spacer(flex: 10),
              Expanded(
                flex: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create Your Account",
                      style: TextStyle(fontSize: 40, color: VarlikYonetimiColors().goldColors),
                    ),
                    Text(
                      "Create an account to view and manage your assets.",
                      style: TextStyle(fontSize: 21, color: VarlikYonetimiColors().goldColors),
                    )
                  ],
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
                      child: TextFormField(
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
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
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
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
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
                      ),
                    ),
                    const Expanded(child: SignUpPassordTextFormField()),
                  ],
                ),
              ),
              const Spacer(
                flex: 5,
              ),
              Expanded(
                  flex: 7,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: VarlikYonetimiColors().goldColors,
                              ),
                              child: Text(
                                "Create Account",
                                style: TextStyle(color: VarlikYonetimiColors().blueColor, fontSize: 30),
                              ))),
                    ],
                  )),
              Expanded(
                flex: 7,
                child: Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Divider(
                          color: VarlikYonetimiColors().goldColors,
                        )),
                    Expanded(
                      flex: 2,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(
                            "Or Sign up with",
                            style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 2,
                        child: Divider(
                          color: VarlikYonetimiColors().goldColors,
                        )),
                  ],
                ),
              ),
              const Expanded(
                  flex: 7,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      LoginWithGoogleButton(),
                    ],
                  )),
              const Spacer(
                flex: 10,
              ),
              Expanded(
                flex: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",
                        style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 25)),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ))
                  ],
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

class SignUpPassordTextFormField extends StatefulWidget {
  const SignUpPassordTextFormField({
    super.key,
  });

  @override
  State<SignUpPassordTextFormField> createState() => _SignUpPassordTextFormFieldState();
}

class _SignUpPassordTextFormFieldState extends State<SignUpPassordTextFormField> {
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
