// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoModel _$$_VideoModelFromJson(Map<String, dynamic> json) =>
    _$_VideoModel(
      contentId: json['contentId'] as String?,
      caption: json['caption'] as String?,
      thumbnail: json['thumbnail'] as String?,
      url: json['url'] as String?,
      views: json['views'] as num?,
      likes: json['likes'] as num?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$_VideoModelToJson(_$_VideoModel instance) =>
    <String, dynamic>{
      'contentId': instance.contentId,
      'caption': instance.caption,
      'thumbnail': instance.thumbnail,
      'url': instance.url,
      'views': instance.views,
      'likes': instance.likes,
      'createdAt': instance.createdAt?.toIso8601String(),
    };
