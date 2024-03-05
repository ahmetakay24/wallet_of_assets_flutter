import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final User? user;

  const MainScreen({Key? key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Welcome ${user?.displayName ?? 'Guest'}",
              style: const TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
