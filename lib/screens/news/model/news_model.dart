import 'package:json_annotation/json_annotation.dart';
part 'news_model.g.dart';

@JsonSerializable()
class NewsModel {
  String? title;
  String? url;
  String? time_published;
  String? summary;
  String? banner_image;

  NewsModel(this.title, this.url, this.time_published, this.summary, this.banner_image);

  factory NewsModel.fromJson(dynamic json) {
    return NewsModel(json["title"] as String, json["url"] as String, json["time_published"] as String,
        json["summary"] as String, json["banner_image"] as String);
  }

  @override
  String toString() {
    return "{$title,$url,$time_published,$summary,$summary,$banner_image";
  }
}
