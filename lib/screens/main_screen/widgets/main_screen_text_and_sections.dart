import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';

class TotalAssetsSection extends StatelessWidget {
  const TotalAssetsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(181, 145, 68, 1),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          const Spacer(
            flex: 15,
          ),
          Expanded(
            flex: 27,
            child: Text(
              "Total Assets",
              style: TextStyle(fontSize: 35, color: VarlikYonetimiColors().blueColor),
            ),
          ),
          Expanded(
            flex: 39,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "\$75,242,12",
                  style: TextStyle(fontSize: 35, color: VarlikYonetimiColors().blueColor, fontFamily: "Lato"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: InkWell(
                    child: Icon(
                      Icons.remove_red_eye,
                      color: VarlikYonetimiColors().blueColor,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "+\$2,340.8 (%3,13)",
                  style: TextStyle(fontSize: 15, color: VarlikYonetimiColors().blueColor, fontFamily: "Lato"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: InkWell(
                      child: Text(
                    "Today",
                    style: TextStyle(
                      fontSize: 17,
                      color: VarlikYonetimiColors().blueColor,
                    ),
                  )),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 20,
          ),
        ],
      ),
    );
  }
}

class AssetsManagementsTitle extends StatelessWidget {
  const AssetsManagementsTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: VarlikYonetimiColors().goldColors,
            height: 10,
          ),
        ),
        Expanded(
            flex: 2,
            child: Center(
                child: Text(
              "Assets Managements",
              style: TextStyle(fontSize: 17, color: VarlikYonetimiColors().goldColors),
            ))),
        Expanded(
          child: Divider(
            color: VarlikYonetimiColors().goldColors,
            height: 10,
          ),
        ),
      ],
    );
  }
}
