import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/buttons/assets_sheets_buttons.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/section/assets_sheets_section.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/text_and_headers/assets_sheets_text_and_headers.dart';
import 'package:varlik_yonetimi/screens/main_screen/bottom_sheets/emtia_bottom_sheet/text_fields/emtia_bottom_sheet_text_fields.dart';

class EmtiaBottomSheet extends StatelessWidget {
  const EmtiaBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    /*final user = FirebaseAuth.instance;
    CollectionReference assetsRef = FirebaseFirestore.instance.collection("users");*/
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
                            widget: GoldBuyQuantityTextFormField(),
                            title: "Quantity : ",
                          ),
                        ),
                        const Spacer(),
                        const Expanded(
                            flex: 4,
                            child: AssetsSheetsInputSection(
                                widget: GoldBuyQuantityPriceTextFormField(), title: "Quantity Purchase Price : "))
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
                const Expanded(
                    flex: 20,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: AssetsSheetsInputSection(
                            widget: GoldSellQuantityTextFormField(),
                            title: "Quantity : ",
                          ),
                        ),
                        Spacer(),
                        Expanded(
                            flex: 4,
                            child: AssetsSheetsInputSection(
                                widget: GoldSellQuantityPriceTextFormField(), title: "Quantity Purchase Price : "))
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
                            widget: OilBuyQuantityTextFormField(),
                            title: "Quantity : ",
                          ),
                        ),
                        const Spacer(),
                        const Expanded(
                            flex: 4,
                            child: AssetsSheetsInputSection(
                                widget: OilBuyQuantityPriceTextFormField(), title: "Quantity Purchase Price : "))
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
                const Expanded(
                    flex: 20,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: AssetsSheetsInputSection(
                            widget: OilSellQuantityTextFormField(),
                            title: "Quantity : ",
                          ),
                        ),
                        Spacer(),
                        Expanded(
                            flex: 4,
                            child: AssetsSheetsInputSection(
                                widget: OilSellQuantityPriceTextFormField(), title: "Quantity Purchase Price : "))
                      ],
                    )),
                const Spacer(
                  flex: 5,
                ),
                Expanded(
                    flex: 15,
                    child: AssetsSheetsConfirmButton(
                      fun: () {
                        /*assetsRef.doc(user.currentUser!.uid).update({
                          'gold': GoldBuyQuantityTextFormField().goldBuyQuantityController.value,
                          'oil': OilBuyQuantityTextFormField().oilBuyQuantityController.value
                        });*/
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
