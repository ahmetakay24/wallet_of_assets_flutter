import 'dart:convert';
import 'dart:io';
import 'dart:isolate';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:varlik_yonetimi/screens/news/model/news_model.dart';
part 'news_view_model.g.dart';

class NewsModelView = _NewsModelViewBase with _$NewsModelView;
abstract class _NewsModelViewBase with Store {
  @observable
  List<NewsModel> news = [];

  final url = "https://www.alphavantage.co/query?function=NEWS_SENTIMENT&tickers=AAPL&apikey=6TXCUCZLP7O5FZDS";

  @observable
  bool isServiceLoading = false;

  @action
  Future<void> getNews() async {
    Dio dio = Dio();
    dio.options.responseType = ResponseType.json;

    final response = await dio.get(url);

    if (response.statusCode == HttpStatus.ok) {
      final datas = jsonDecode(response.toString())["feed"] as List;
      news = await Isolate.run(
        () {
          return datas
              .map(
                (e) => NewsModel.fromJson(e),
              )
              .toList();
        },
      );
    }
  }
}
