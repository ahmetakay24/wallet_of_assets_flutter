import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_methods.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/buttons/assets_sheets_buttons.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/section/assets_sheets_section.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/text_and_headers/assets_sheets_text_and_headers.dart';
import 'package:varlik_yonetimi/screens/main_screen/bottom_sheets/foreign_bottom_sheet/text_fields/foreign_bottom_sheet_text_fields.dart';

class ForeignBottomSheet extends StatefulWidget {
  const ForeignBottomSheet({super.key});

  @override
  State<ForeignBottomSheet> createState() => _ForeignBottomSheetState();
}

class _ForeignBottomSheetState extends State<ForeignBottomSheet> {
  final user = FirebaseAuth.instance;
  CollectionReference assetsRef = FirebaseFirestore.instance.collection("users");

  TextEditingController foreignBuyQuantityTextFormField = TextEditingController();
  int foreignBuyQuantity = 0;

  TextEditingController foreignBuyQuantityPriceTextFormField = TextEditingController();
  double foreignBuyQuantityPrice = 0;

  TextEditingController foreignSellQuantityTextFormField = TextEditingController();
  int foreignSellQuantity = 0;

  TextEditingController foreignSellQuantityPriceTextFormField = TextEditingController();
  double foreignSellQuantityPrice = 0;

  void updateForeignBuyQuantity() {
    setState(() {
      foreignBuyQuantity = int.parse(foreignBuyQuantityTextFormField.text);
    });
  }

  void updateForeignBuyQuantityPrice() {
    setState(() {
      foreignBuyQuantityPrice = double.parse(foreignBuyQuantityPriceTextFormField.text);
    });
  }

  void updateForeignSellQuantity() {
    setState(() {
      foreignSellQuantity = int.parse(foreignSellQuantityTextFormField.text);
    });
  }

  void updateForeignSellQuantityPrice() {
    setState(() {
      foreignSellQuantityPrice = double.parse(foreignSellQuantityPriceTextFormField.text);
    });
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
                      title: "Foreign - Buy",
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
                            widget: ForeignBuyQuantityTextFormField(
                              controller: foreignBuyQuantityTextFormField,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                            flex: 4,
                            child: AssetsSheetsInputSection(
                                widget: ForeignBuyQuantityPriceTextFormField(
                                  controller: foreignBuyQuantityPriceTextFormField,
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
                      title: "Foreign - Sell",
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
                            widget: ForeignSellQuantityTextFormField(
                              controller: foreignSellQuantityTextFormField,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                            flex: 4,
                            child: AssetsSheetsInputSection(
                                widget: ForeignSellQuantityPriceTextFormField(
                                  controller: foreignSellQuantityPriceTextFormField,
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
                        updateForeignBuyQuantity();
                        updateForeignBuyQuantityPrice();
                        updateForeignSellQuantity();
                        updateForeignSellQuantityPrice();
                        assetsRef.doc(user.currentUser!.uid).update({
                          "foreign": totalCalculator(foreignBuyQuantityPrice, foreignSellQuantityPrice,
                              foreignSellQuantity, foreignBuyQuantity)
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
