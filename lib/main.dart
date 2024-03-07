import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/screens/login/login.dart';
import 'package:varlik_yonetimi/screens/main_screen/main_screen.dart';
import 'package:varlik_yonetimi/theme/theme_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: "AIzaSyDxyLgmJ3ZKv-JQzaLsDzrflUXlM7wxwMo",
            appId: "1:868921740099:android:08f93620fadcee08e5bdf6",
            messagingSenderId: "868921740099",
            projectId: "varlik-yonetimi-a9cff",
          ),
        )
      : await Firebase.initializeApp();

  runApp(const VarlikYonetimi());
}

class VarlikYonetimi extends StatelessWidget {
  const VarlikYonetimi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      home: const SafeArea(child: MainScreen()),
    );
  }
}
