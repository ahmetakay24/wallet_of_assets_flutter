import 'package:csv/csv.dart';
import 'package:flutter/services.dart';
import 'package:mobx/mobx.dart';
part 'stocks_model_view.g.dart';

class StocksModelView = _StocksModelViewBase with _$StocksModelView;

abstract class _StocksModelViewBase with Store {
  @observable
  List<List<dynamic>> stocksData = [];

  @action
  Future<void> loadDatas() async {
    final rowDatas = await rootBundle.loadString("assets/datas/sp500_companies.csv");
    List<List<dynamic>> list = const CsvToListConverter().convert(rowDatas, eol: "\n");
    stocksData = list;
  }
}
