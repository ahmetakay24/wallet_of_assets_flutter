import 'package:flutter/material.dart';

class VarlikYonetimiColors {
  final blueColor = const Color.fromRGBO(0, 49, 80, 1);
  final goldColors = const Color.fromRGBO(181, 145, 68, 1);
}

class DeviceSize {
  final double height;
  final double width;

  DeviceSize(BuildContext context)
      : height = MediaQuery.of(context).size.height,
        width = MediaQuery.of(context).size.width;
}

