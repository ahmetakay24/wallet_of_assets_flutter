import 'package:json_annotation/json_annotation.dart';
part 'news_model.g.dart';

@JsonSerializable()
class NewsModel {
  List<Feed>? feed;

  NewsModel({this.feed});

  NewsModel.fromJson(Map<String, dynamic> json) {
    if (json['feed'] != null) {
      feed = <Feed>[];
      json['feed'].forEach((v) {
        feed!.add(Feed.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (feed != null) {
      data['feed'] = feed!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

@JsonSerializable()
class Feed {
  String? title;
  String? url;
  String? timePublished;
  String? summary;
  String? bannerImage;
  String? source;

  Feed({this.title, this.url, this.timePublished, this.summary, this.bannerImage, this.source});

  Feed.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    timePublished = json['time_published'];
    summary = json['summary'];
    bannerImage = json['banner_image'];
    source = json['source'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['url'] = url;
    data['time_published'] = timePublished;
    data['summary'] = summary;
    data['banner_image'] = bannerImage;
    data['source'] = source;
    return data;
  }
}
