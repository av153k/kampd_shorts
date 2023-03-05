import 'package:equatable/equatable.dart';

class VideoModel extends Equatable {
  const VideoModel({
    this.contentId,
    this.caption,
    this.thumbnail,
    this.url,
    this.views,
    this.likes,
    this.createdAt,
  });
  factory VideoModel.fromJson(Map<String, dynamic> json) => VideoModel(
        contentId: json['contentId'] as String?,
        caption: json['caption'] as String?,
        thumbnail: json['thumbnail'] as String?,
        url: json['url'] as String?,
        views: json['views'] as int?,
        likes: json['likes'] as int?,
        createdAt: json['createdAt'] == null
            ? null
            : DateTime.parse(json['createdAt'] as String),
      );
  final String? contentId;
  final String? caption;
  final String? thumbnail;
  final String? url;
  final int? views;
  final int? likes;
  final DateTime? createdAt;

  Map<String, dynamic> toJson() => {
        'contentId': contentId,
        'caption': caption,
        'thumbnail': thumbnail,
        'url': url,
        'views': views,
        'likes': likes,
        'createdAt': createdAt?.toIso8601String(),
      };

  VideoModel copyWith({
    String? contentId,
    String? caption,
    String? thumbnail,
    String? url,
    int? views,
    int? likes,
    DateTime? createdAt,
  }) {
    return VideoModel(
      contentId: contentId ?? this.contentId,
      caption: caption ?? this.caption,
      thumbnail: thumbnail ?? this.thumbnail,
      url: url ?? this.url,
      views: views ?? this.views,
      likes: likes ?? this.likes,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  List<Object?> get props {
    return [
      contentId,
      caption,
      thumbnail,
      url,
      views,
      likes,
      createdAt,
    ];
  }
}
