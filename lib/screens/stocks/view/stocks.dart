import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/screens/stocks/view_model.dart/stocks_model_view.dart';


class Stocks extends StatefulWidget {
  const Stocks({super.key});

  @override
  State<Stocks> createState() => _StocksState();
}

class _StocksState extends State<Stocks> {
  final stocksModelView = StocksModelView();

  @override
  void initState() {
    super.initState();
    stocksModelView.loadDatas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
          color: VarlikYonetimiColors().goldColors,
        ),
        title: Text(
          "Stocks",
          style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        //her hisse bloğunu burada yönetip ui verileri aktarıyoruz
        child: Observer(builder: (_) {
          return ListView.builder(
            itemCount: stocksModelView.stocksData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: DeviceSize(context).height * 0.1,
                  width: DeviceSize(context).width,
                  decoration:
                      BoxDecoration(color: VarlikYonetimiColors().goldColors, borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    leading: Text(
                      stocksModelView.stocksData[index][0].toString(),
                      style: TextStyle(color: VarlikYonetimiColors().blueColor),
                    ),
                    title: Text(stocksModelView.stocksData[index][1].toString(),
                        style: TextStyle(color: VarlikYonetimiColors().blueColor)),
                    subtitle: Text(stocksModelView.stocksData[index][2].toString(),
                        style: TextStyle(color: VarlikYonetimiColors().blueColor)),
                    trailing: Text(
                      stocksModelView.stocksData[index][3].toString(),
                      style: TextStyle(color: VarlikYonetimiColors().blueColor, fontSize: 15),
                    ),
                  ),
                ),
              );
            },
          );
        }),
      ),
    );
  }
}
