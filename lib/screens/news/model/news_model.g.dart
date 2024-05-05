// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) => NewsModel(
      feed: (json['feed'] as List<dynamic>?)
          ?.map((e) => Feed.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NewsModelToJson(NewsModel instance) => <String, dynamic>{
      'feed': instance.feed,
    };

Feed _$FeedFromJson(Map<String, dynamic> json) => Feed(
      title: json['title'] as String?,
      url: json['url'] as String?,
      timePublished: json['timePublished'] as String?,
      summary: json['summary'] as String?,
      bannerImage: json['bannerImage'] as String?,
      source: json['source'] as String?,
    );

Map<String, dynamic> _$FeedToJson(Feed instance) => <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'timePublished': instance.timePublished,
      'summary': instance.summary,
      'bannerImage': instance.bannerImage,
      'source': instance.source,
    };
