import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/buttons/assets_sheets_buttons.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/section/assets_sheets_section.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/text_and_headers/assets_sheets_text_and_headers.dart';

class ForeignBottomSheet extends StatelessWidget {
  const ForeignBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VarlikYonetimiColors().blueColor,
      body: Column(children: [
        AssetsSheetSection(
          oneOrTwo: 1,
          widget: Column(
            children: [
              const Spacer(
                flex: 5,
              ),
              const Expanded(
                  flex: 10,
                  child: ShowBottomSheetHeader(
                    title: "Foreign",
                  )),
              const Spacer(
                flex: 5,
              ),
              const Expanded(
                  flex: 20,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: AssetsSheetsInputSection(
                          title: "Quantity : ",
                          widget: ForeignQuantityTextFormField(),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                          flex: 4,
                          child: AssetsSheetsInputSection(
                              widget: ForeignQuantityPriceTextFormField(), title: "Quantity Purchase Price : "))
                    ],
                  )),
              const Spacer(
                flex: 5,
              ),
              Expanded(
                  flex: 15,
                  child: AssetsSheetsConfirmButton(
                    fun: () {},
                  )),
              const Spacer(
                flex: 5,
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class ForeignQuantityTextFormField extends StatelessWidget {
  const ForeignQuantityTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController foreignQuantityController = TextEditingController();

    return TextFormField(
      controller: foreignQuantityController,
      keyboardType: TextInputType.number,
      style: const TextStyle(fontSize: 13, color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().blueColor),
          borderRadius: BorderRadius.circular(15),
        ),
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        filled: true,
        fillColor: Colors.transparent,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().blueColor),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class ForeignQuantityPriceTextFormField extends StatelessWidget {
  const ForeignQuantityPriceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController foreignQuantityPriceController = TextEditingController();
    return TextFormField(
      controller: foreignQuantityPriceController,
      keyboardType: TextInputType.number,
      style: const TextStyle(fontSize: 13, color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().blueColor),
          borderRadius: BorderRadius.circular(15),
        ),
        hintStyle: const TextStyle(
          color: Colors.white,
        ),
        filled: true,
        fillColor: Colors.transparent,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: VarlikYonetimiColors().blueColor),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
