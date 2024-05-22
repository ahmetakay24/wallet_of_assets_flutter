import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_methods.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/buttons/assets_sheets_buttons.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/section/assets_sheets_section.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/text_and_headers/assets_sheets_text_and_headers.dart';
import 'package:varlik_yonetimi/screens/main_screen/bottom_sheets/real_estate_bottom_sheet/text_fields/real_estate_bottom_sheet_text_fields.dart';

class RealEstateBottomSheet extends StatefulWidget {
  const RealEstateBottomSheet({super.key});

  @override
  State<RealEstateBottomSheet> createState() => _RealEstateBottomSheetState();
}

class _RealEstateBottomSheetState extends State<RealEstateBottomSheet> {
  final user = FirebaseAuth.instance;
  CollectionReference assetsRef = FirebaseFirestore.instance.collection("users");

  TextEditingController realEstateBuyQuantityTextFormField = TextEditingController();
  int realEstateBuyQuantity = 0;

  TextEditingController realEstateBuyQuantityPriceTextFormField = TextEditingController();
  double realEstateBuyQuantityPrice = 0;

  TextEditingController realEstateSellQuantityTextFormField = TextEditingController();
  int realEstateSellQuantity = 0;

  TextEditingController realEstateSellQuantityPriceTextFormField = TextEditingController();
  double realEstateSellQuantityPrice = 0;

  void updaterealEstateBuyQuantity() {
    if (realEstateBuyQuantityTextFormField.text.isNotEmpty) {
      setState(() {
        realEstateBuyQuantity = int.parse(realEstateBuyQuantityTextFormField.text);
      });
    } else {
      setState(() {
        realEstateBuyQuantity = 0;
      });
    }
  }

  void updaterealEstateBuyQuantityPrice() {
    if (realEstateBuyQuantityPriceTextFormField.text.isNotEmpty) {
      setState(() {
        realEstateBuyQuantityPrice = double.parse(realEstateBuyQuantityPriceTextFormField.text);
      });
    } else {
      setState(() {
        realEstateBuyQuantityPrice = 0.0;
      });
    }
  }

  void updaterealEstateSellQuantity() {
    if (realEstateSellQuantityTextFormField.text.isNotEmpty) {
      setState(() {
        realEstateSellQuantity = int.parse(realEstateSellQuantityTextFormField.text);
      });
    } else {
      setState(() {
        realEstateSellQuantity = 0;
      });
    }
  }

  void updaterealEstateSellQuantityPrice() {
    if (realEstateSellQuantityPriceTextFormField.text.isNotEmpty) {
      setState(() {
        realEstateSellQuantityPrice = double.parse(realEstateSellQuantityPriceTextFormField.text);
      });
    } else {
      setState(() {
        realEstateSellQuantityPrice = 0.0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VarlikYonetimiColors().goldColors,
      body: SingleChildScrollView(
        child: Column(children: [
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
                      title: "Estate - Buy",
                    )),
                const Spacer(
                  flex: 5,
                ),
                Expanded(
                    flex: 20,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: AssetsSheetsInputSection(
                            title: "Quantity : ",
                            widget: RealEstateBuyQuantityTextFormField(
                              controller: realEstateBuyQuantityTextFormField,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                            flex: 4,
                            child: AssetsSheetsInputSection(
                                widget: RealEstateBuyQuantityPriceTextFormField(
                                  controller: realEstateBuyQuantityPriceTextFormField,
                                ),
                                title: "Quantity Purchase Price : "))
                      ],
                    )),
                const Spacer(
                  flex: 5,
                ),
                const Expanded(
                    flex: 10,
                    child: ShowBottomSheetHeader(
                      title: "Estate - Sell",
                    )),
                const Spacer(
                  flex: 5,
                ),
                Expanded(
                    flex: 20,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: AssetsSheetsInputSection(
                            title: "Quantity : ",
                            widget: RealEstateSellQuantityTextFormField(
                              controller: realEstateSellQuantityTextFormField,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                            flex: 4,
                            child: AssetsSheetsInputSection(
                                widget: RealEstateSellQuantityPriceTextFormField(
                                  controller: realEstateSellQuantityPriceTextFormField,
                                ),
                                title: "Quantity Purchase Price : "))
                      ],
                    )),
                const Spacer(
                  flex: 5,
                ),
                Expanded(
                    flex: 15,
                    child: AssetsSheetsConfirmButton(
                      fun: () {
                        updaterealEstateBuyQuantity();
                        updaterealEstateBuyQuantityPrice();
                        updaterealEstateSellQuantity();
                        updaterealEstateSellQuantityPrice();
                        assetsRef.doc(user.currentUser!.uid).update({
                          "estate": totalCalculator(realEstateBuyQuantityPrice, realEstateSellQuantityPrice,
                              realEstateSellQuantity, realEstateBuyQuantity)
                        });
                        Navigator.pop(context);
                      },
                    )),
                const Spacer(
                  flex: 5,
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
