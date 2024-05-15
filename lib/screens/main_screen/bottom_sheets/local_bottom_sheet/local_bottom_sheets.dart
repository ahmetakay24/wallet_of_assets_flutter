import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_methods.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/buttons/assets_sheets_buttons.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/section/assets_sheets_section.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/text_and_headers/assets_sheets_text_and_headers.dart';
import 'package:varlik_yonetimi/screens/main_screen/bottom_sheets/local_bottom_sheet/text_fields/local_bottom_sheet_text_fields.dart';

class LocalBottomSheet extends StatefulWidget {
  const LocalBottomSheet({super.key});

  @override
  State<LocalBottomSheet> createState() => _LocalBottomSheetState();
}

class _LocalBottomSheetState extends State<LocalBottomSheet> {
  final user = FirebaseAuth.instance;
  CollectionReference assetsRef = FirebaseFirestore.instance.collection("users");

  TextEditingController localBuyQuantityTextFormField = TextEditingController();
  int localBuyQuantity = 0;

  TextEditingController localBuyQuantityPriceTextFormField = TextEditingController();
  double localBuyQuantityPrice = 0;

  TextEditingController localSellQuantityTextFormField = TextEditingController();
  int localSellQuantity = 0;

  TextEditingController localSellQuantityPriceTextFormField = TextEditingController();
  double localSellQuantityPrice = 0;

  void updatelocalBuyQuantity() {
    setState(() {
      localBuyQuantity = int.parse(localBuyQuantityTextFormField.text);
    });
  }

  void updatelocalBuyQuantityPrice() {
    setState(() {
      localBuyQuantityPrice = double.parse(localBuyQuantityPriceTextFormField.text);
    });
  }

  void updatelocalSellQuantity() {
    setState(() {
      localSellQuantity = int.parse(localSellQuantityTextFormField.text);
    });
  }

  void updatelocalSellQuantityPrice() {
    setState(() {
      localSellQuantityPrice = double.parse(localSellQuantityPriceTextFormField.text);
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
                      title: "Local - Buy",
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
                            widget: LocalBuyQuantityTextFormField(
                              controller: localBuyQuantityTextFormField,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                            flex: 4,
                            child: AssetsSheetsInputSection(
                                widget: LocalBuyQuantityPriceTextFormField(
                                  controller: localBuyQuantityPriceTextFormField,
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
                      title: "Local - Sell",
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
                            widget: LocalSellQuantityTextFormField(
                              controller: localSellQuantityTextFormField,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                            flex: 4,
                            child: AssetsSheetsInputSection(
                                widget: LocalSellQuantityPriceTextFormField(
                                  controller: localSellQuantityPriceTextFormField,
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
                        updatelocalBuyQuantity();
                        updatelocalBuyQuantityPrice();
                        updatelocalSellQuantity();
                        updatelocalSellQuantityPrice();
                        assetsRef.doc(user.currentUser!.uid).update({
                          "local": totalCalculator(
                              localBuyQuantityPrice, localSellQuantityPrice, localSellQuantity, localBuyQuantity)
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
