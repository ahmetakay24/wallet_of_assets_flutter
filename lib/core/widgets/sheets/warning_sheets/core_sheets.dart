import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_methods.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class ValidatorBottomSheet {
  Future<void> show(BuildContext context, String text) async {
    await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      isScrollControlled: true,
      builder: (context) {
        return ValidatorBottomSheetScreen(
          sheetWarningText: text,
        );
      },
    );
  }
}

class ValidatorBottomSheetScreen extends StatefulWidget {
  final String sheetWarningText;
  const ValidatorBottomSheetScreen({
    Key? key,
    required this.sheetWarningText,
  }) : super(key: key);

  @override
  State<ValidatorBottomSheetScreen> createState() => _ValidatorBottomSheetScreenState();
}

class _ValidatorBottomSheetScreenState extends State<ValidatorBottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: VarlikYonetimiColors().goldColors,
      height: responsiveResizer(DeviceSize(context).height, 50),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: responsiveResizer(DeviceSize(context).height, 3.92)),
          child: Column(
            children: [
              const Spacer(
                flex: 5,
              ),
              Expanded(
                flex: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        right: responsiveResizer(DeviceSize(context).width, 25.74),
                      ),
                      child: Text(
                        "Warning",
                        style: TextStyle(
                          fontSize: 30,
                          color: VarlikYonetimiColors().blueColor,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.cancel_outlined,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 5,
              ),
              const Expanded(
                flex: 25,
                child: Image(image: AssetImage("assets/image/logos/cancel-button.png")),
              ),
              const Spacer(
                flex: 5,
              ),
              Expanded(
                flex: 15,
                child: Text(
                  textAlign: TextAlign.center,
                  widget.sheetWarningText,
                  style: TextStyle(fontSize: 30, color: VarlikYonetimiColors().blueColor),
                ),
              ),
              const Spacer(
                flex: 5,
              ),
              Expanded(
                flex: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: VarlikYonetimiColors().blueColor,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Understood",
                          style: TextStyle(fontSize: 35, color: VarlikYonetimiColors().goldColors),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}