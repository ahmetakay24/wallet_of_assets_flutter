import 'package:flutter/material.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:intl/intl.dart';

class TotalAssetsSection extends StatelessWidget {
  const TotalAssetsSection({super.key, required this.assets, required this.fun});

  final double assets;
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat.yMd().format(now);

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
                  "\$$assets",
                  style: TextStyle(fontSize: 35, color: VarlikYonetimiColors().blueColor, fontFamily: "Lato"),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: InkWell(
                    onTap: fun,
                    child: Icon(
                      Icons.refresh,
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
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    formattedDate,
                    style: TextStyle(fontSize: 17, color: VarlikYonetimiColors().blueColor, fontFamily: "Lato"),
                  ),
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
