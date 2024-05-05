import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class AssetsSheetSection extends StatelessWidget {
  const AssetsSheetSection({super.key, required this.widget, required this.oneOrTwo});
  final Widget widget;
  final int oneOrTwo;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: oneOrTwo == 1 ? DeviceSize(context).height * 0.53 : DeviceSize(context).height * 0.8,
        width: DeviceSize(context).width,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(181, 145, 68, 1),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(padding: const EdgeInsets.symmetric(horizontal: 10), child: widget));
  }
}

class AssetsSheetsInputSection extends StatelessWidget {
  const AssetsSheetsInputSection({
    super.key,
    required this.title,
    required this.widget,
  });

  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text(title)),
        Expanded(child: widget),
      ],
    );
  }
}
