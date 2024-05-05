import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/buttons/assets_sheets_buttons.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/section/assets_sheets_section.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/text_and_headers/assets_sheets_text_and_headers.dart';
import 'package:varlik_yonetimi/screens/main_screen/bottom_sheets/local_bottom_sheet/text_fields/local_bottom_sheet_text_fields.dart';

class LocalBottomSheet extends StatelessWidget {
  const LocalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VarlikYonetimiColors().goldColors,
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
                    title: "Local - Buy",
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
                          widget: LocalBuyQuantityTextFormField(),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                          flex: 4,
                          child: AssetsSheetsInputSection(
                              widget: LocalBuyQuantityPriceTextFormField(), title: "Quantity Purchase Price : "))
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
              const Expanded(
                  flex: 20,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: AssetsSheetsInputSection(
                          title: "Quantity : ",
                          widget: LocalSellQuantityTextFormField(),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                          flex: 4,
                          child: AssetsSheetsInputSection(
                              widget: LocalSellQuantityPriceTextFormField(), title: "Quantity Purchase Price : "))
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

