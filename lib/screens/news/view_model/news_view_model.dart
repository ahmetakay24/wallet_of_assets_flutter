import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:varlik_yonetimi/screens/news/model/news_model.dart';
part 'news_view_model.g.dart';

class NewsModelView = _NewsModelViewBase with _$NewsModelView;

abstract class _NewsModelViewBase with Store {
  @observable
  List<Feed> news = [];

  final url = "https://www.alphavantage.co/query?function=NEWS_SENTIMENT&tickers=AAPL&apikey=demo";

  @observable
  bool isServiceLoading = false;

  @action
  Future<void> getNews() async {
    Dio dio = Dio();
    dio.options.responseType = ResponseType.json;

    try {
      final response = await dio.get(url);

      if (response.statusCode == HttpStatus.ok) {
        final Map<String, dynamic> data = response.data;
        final List<dynamic> feedList = data['feed'];

        for (var feedData in feedList) {
          Feed feed = Feed.fromJson(feedData);
          news.add(feed);
        }

        for (var feed in news) {
          print(feed.title);
          print(feed.bannerImage);
          print(feed.source);
          print(feed.summary);
          print(feed.timePublished);
          print(feed.url);
        }
      } else {
        throw Exception('Failed to load news');
      }
    } catch (e) {
      print('Error fetching news: $e');
    }
  }
}
