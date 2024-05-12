// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsModel _$NewsModelFromJson(Map<String, dynamic> json) => NewsModel(
      json['title'] as String?,
      json['url'] as String?,
      json['time_published'] as String?,
      json['summary'] as String?,
      json['banner_image'] as String?,
    );

Map<String, dynamic> _$NewsModelToJson(NewsModel instance) => <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'time_published': instance.time_published,
      'summary': instance.summary,
      'banner_image': instance.banner_image,
    };
