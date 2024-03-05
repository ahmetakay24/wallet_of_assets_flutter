import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: VarlikYonetimiColors().blueColor,
  fontFamily: "CormorantGaramond",
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
      borderRadius: BorderRadius.circular(15),
    ),
    hintStyle: const TextStyle(
      color: Colors.white,
    ),
    filled: true,
    fillColor: Colors.transparent,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: VarlikYonetimiColors().goldColors),
      borderRadius: BorderRadius.circular(15),
    ),
  ),
  textSelectionTheme: TextSelectionThemeData(
    cursorColor: VarlikYonetimiColors().goldColors,
  ),
);