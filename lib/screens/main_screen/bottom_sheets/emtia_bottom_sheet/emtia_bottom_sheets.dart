import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/buttons/assets_sheets_buttons.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/section/assets_sheets_section.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/text_and_headers/assets_sheets_text_and_headers.dart';

class EmtiaBottomSheet extends StatelessWidget {
  const EmtiaBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VarlikYonetimiColors().goldColors,
      body: Column(children: [
        AssetsSheetSection(
          oneOrTwo: 2,
          widget: Column(
            children: [
              const Spacer(
                flex: 5,
              ),
              const Expanded(
                  flex: 10,
                  child: ShowBottomSheetHeader(
                    title: "Gold",
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
                          widget: GoldQuantityTextFormField(),
                          title: "Quantity : ",
                        ),
                      ),
                      Spacer(),
                      Expanded(
                          flex: 4,
                          child: AssetsSheetsInputSection(
                              widget: GoldQuantityPriceTextFormField(), title: "Quantity Purchase Price : "))
                    ],
                  )),
              const Spacer(
                flex: 5,
              ),
              const Expanded(
                  flex: 10,
                  child: ShowBottomSheetHeader(
                    title: "Oil",
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
                          widget: OilQuantityTextFormField(),
                          title: "Quantity : ",
                        ),
                      ),
                      Spacer(),
                      Expanded(
                          flex: 4,
                          child: AssetsSheetsInputSection(
                              widget: OilQuantityPriceTextFormField(), title: "Quantity Purchase Price : "))
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

class GoldQuantityTextFormField extends StatelessWidget {
  const GoldQuantityTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController goldQuantityController = TextEditingController();

    return TextFormField(
      controller: goldQuantityController,
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

class GoldQuantityPriceTextFormField extends StatelessWidget {
  const GoldQuantityPriceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController goldQuantityPriceController = TextEditingController();
    return TextFormField(
      controller: goldQuantityPriceController,
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

class OilQuantityTextFormField extends StatelessWidget {
  const OilQuantityTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController oilQuantityController = TextEditingController();

    return TextFormField(
      controller: oilQuantityController,
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

class OilQuantityPriceTextFormField extends StatelessWidget {
  const OilQuantityPriceTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController oilQuantityPriceController = TextEditingController();
    return TextFormField(
      controller: oilQuantityPriceController,
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
