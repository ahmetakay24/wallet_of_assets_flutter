import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        title: Text(
          "Stocks",
          style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    leading: Text(stocksModelView.stocksData[index][0].toString()),
                    title: Text(stocksModelView.stocksData[index][1].toString()),
                    subtitle: Text(stocksModelView.stocksData[index][2].toString()),
                    trailing: Text(stocksModelView.stocksData[index][3].toString()),
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
