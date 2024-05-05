import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/buttons/assets_sheets_buttons.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/section/assets_sheets_section.dart';
import 'package:varlik_yonetimi/core/widgets/sheets/assets_sheets/text_and_headers/assets_sheets_text_and_headers.dart';
import 'package:varlik_yonetimi/screens/main_screen/bottom_sheets/foreign_bottom_sheet/text_fields/foreign_bottom_sheet_text_fields.dart';

class ForeignBottomSheet extends StatelessWidget {
  const ForeignBottomSheet({super.key});

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
                    title: "Foreign - Buy",
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
                          widget: ForeignBuyQuantityTextFormField(),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                          flex: 4,
                          child: AssetsSheetsInputSection(
                              widget: ForeignBuyQuantityPriceTextFormField(), title: "Quantity Purchase Price : "))
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
              const Expanded(
                  flex: 20,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 4,
                        child: AssetsSheetsInputSection(
                          title: "Quantity : ",
                          widget: ForeignSellQuantityTextFormField(),
                        ),
                      ),
                      Spacer(),
                      Expanded(
                          flex: 4,
                          child: AssetsSheetsInputSection(
                              widget: ForeignSellQuantityPriceTextFormField(), title: "Quantity Purchase Price : "))
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
