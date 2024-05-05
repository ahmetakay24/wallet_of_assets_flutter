import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class AssetsSheetsConfirmButton extends StatelessWidget {
  const AssetsSheetsConfirmButton({
    super.key,
    required this.fun,
  });

  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
            child: ElevatedButton(
                onPressed: fun,
                style: ElevatedButton.styleFrom(backgroundColor: VarlikYonetimiColors().blueColor),
                child: Text(
                  "Confirm",
                  style: TextStyle(fontSize: 20, color: VarlikYonetimiColors().goldColors),
                ))),
      ],
    );
  }
}
