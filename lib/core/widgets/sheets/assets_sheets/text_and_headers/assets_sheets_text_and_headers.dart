import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class ShowBottomSheetHeader extends StatelessWidget {
  const ShowBottomSheetHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(
          child: Divider(
            color: Colors.black,
            height: 10,
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              title,
              style: TextStyle(color: VarlikYonetimiColors().blueColor, fontSize: 20),
            ),
          ),
        ),
        Expanded(
          child: Divider(
            color: VarlikYonetimiColors().blueColor,
            height: 10,
          ),
        )
      ],
    );
  }
}
