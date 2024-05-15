import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/buttons/assets_sheets_buttons.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/section/assets_sheets_section.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/text_and_headers/assets_sheets_text_and_headers.dart';
import 'package:varlik_yonetimi/screens/main_screen/bottom_sheets/emtia_bottom_sheet/text_fields/emtia_bottom_sheet_text_fields.dart';

class EmtiaBottomSheet extends StatefulWidget {
  const EmtiaBottomSheet({super.key});

  @override
  State<EmtiaBottomSheet> createState() => _EmtiaBottomSheetState();
}

class _EmtiaBottomSheetState extends State<EmtiaBottomSheet> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance;
    CollectionReference assetsRef = FirebaseFirestore.instance.collection("users");

    TextEditingController goldBuyQuantityTextFormField = TextEditingController();
    int goldBuyQuantity = 0;

    TextEditingController goldBuyQuantityPriceTextFormField = TextEditingController();
    double goldBuyQuantityPrice = 0;

    TextEditingController goldSellQuantityTextFormField = TextEditingController();
    int goldSellQuantity = 0;

    TextEditingController goldSellQuantityPriceTextFormField = TextEditingController();
    double goldSellQuantityPrice = 0;

    TextEditingController oilBuyQuantityTextFormField = TextEditingController();
    int oilBuyQuantity = 0;

    TextEditingController oilBuyQuantityPriceTextFormField = TextEditingController();
    double oilBuyQuantityPrice = 0;

    TextEditingController oilSellQuantityTextFormField = TextEditingController();
    int oilSellQuantity = 0;
    
    TextEditingController oilSellQuantityPriceTextFormField = TextEditingController();
    double oilSellQuantityPrice = 0;

    void updateGoldBuyQuantity() {
      setState(() {
        goldBuyQuantity = int.parse(goldBuyQuantityTextFormField.text);
      });
    }

    void updateGoldBuyQuantityPrice() {
      setState(() {
        goldBuyQuantityPrice = double.parse(goldBuyQuantityPriceTextFormField.text);
      });
    }

    void updateGoldSellQuantity() {
      setState(() {
        goldSellQuantity = int.parse(goldSellQuantityTextFormField.text);
      });
    }

    void updateGoldSellQuantityPrice() {
      setState(() {
        goldSellQuantityPrice = double.parse(goldSellQuantityPriceTextFormField.text);
      });
    }

    void updateOilBuyQuantity() {
      setState(() {
        oilBuyQuantity = int.parse(oilBuyQuantityTextFormField.text);
      });
    }

    void updateOilBuyQuantityPrice() {
      setState(() {
        oilBuyQuantityPrice = double.parse(oilBuyQuantityPriceTextFormField.text);
      });
    }

    void updateOilSellQuantity() {
      setState(() {
        oilSellQuantity = int.parse(oilSellQuantityTextFormField.text);
      });
    }

    void updateOilSellQuantityPrice() {
      setState(() {
        oilSellQuantityPrice = double.parse(oilSellQuantityPriceTextFormField.text);
      });
    }

    return Scaffold(
      backgroundColor: VarlikYonetimiColors().goldColors,
      body: SingleChildScrollView(
        child: Column(children: [
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
                      title: "Gold - Buy",
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
                            widget: GoldBuyQuantityTextFormField(
                              controller: goldBuyQuantityTextFormField,
                            ),
                            title: "Quantity : ",
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                            flex: 4,
                            child: AssetsSheetsInputSection(
                                widget: GoldBuyQuantityPriceTextFormField(
                                  controller: goldBuyQuantityPriceTextFormField,
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
                      title: "Gold - Sell",
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
                            widget: GoldSellQuantityTextFormField(
                              controller: goldSellQuantityTextFormField,
                            ),
                            title: "Quantity : ",
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                            flex: 4,
                            child: AssetsSheetsInputSection(
                                widget: GoldSellQuantityPriceTextFormField(
                                  controller: goldSellQuantityPriceTextFormField,
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
                      title: "Oil - Buy",
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
                            widget: OilBuyQuantityTextFormField(
                              controller: oilBuyQuantityTextFormField,
                            ),
                            title: "Quantity : ",
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                            flex: 4,
                            child: AssetsSheetsInputSection(
                                widget: OilBuyQuantityPriceTextFormField(
                                  controller: oilBuyQuantityPriceTextFormField,
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
                      title: "Oil - Sell",
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
                            widget: OilSellQuantityTextFormField(
                              controller: oilSellQuantityTextFormField,
                            ),
                            title: "Quantity : ",
                          ),
                        ),
                        const Spacer(),
                        Expanded(
                            flex: 4,
                            child: AssetsSheetsInputSection(
                                widget: OilSellQuantityPriceTextFormField(
                                  controller: oilSellQuantityPriceTextFormField,
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
                        updateGoldBuyQuantity();
                        updateGoldBuyQuantityPrice();
                        updateGoldSellQuantity();
                        updateGoldSellQuantityPrice();
                        updateOilBuyQuantity();
                        updateOilBuyQuantityPrice();
                        updateOilSellQuantity();
                        updateOilSellQuantityPrice();
                        assetsRef.doc(user.currentUser!.uid).update({
                          'quantity of gold': calculator(goldBuyQuantity, goldSellQuantity) ,
                          'quantity of oil barrel': calculator(oilBuyQuantity, oilSellQuantity),
                          'emtia': totalEmtiaCalculator(
                            goldBuyQuantityPrice,
                            goldSellQuantityPrice,
                            goldSellQuantity,
                            goldBuyQuantity,
                            oilBuyQuantityPrice,
                            oilSellQuantityPrice,
                            oilSellQuantity,
                            oilBuyQuantityPrice,
                          )
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

  int calculator(int buy, int sell) {
    if (buy - sell >= 0) {
      return buy - sell;
    } else {
      return 0;
    }
  }

  double totalEmtiaCalculator(var goldBuyPrice, var goldSellPrice, var goldSellQuantity, var goldBuyQuantity,
      var oilBuyPrice, var oilSellPrice, var oilSellQuantity, var oilBuyQuantity) {
    double totalOfGold = (goldBuyPrice * goldBuyQuantity) - (goldSellPrice * goldSellQuantity);
    if (totalOfGold < 0) {
      totalOfGold = 0;
    }

    double totalOfOil = (oilBuyPrice * oilBuyQuantity) - (oilSellPrice * oilSellQuantity);
    if (totalOfOil < 0) {
      totalOfOil = 0;
    }

    return totalOfGold + totalOfOil;
  }
}

//ahmetakaybusiness@gmail.com
//123456
