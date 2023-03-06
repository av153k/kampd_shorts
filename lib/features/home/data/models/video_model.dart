import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class VideoModel with _$VideoModel {
  const factory VideoModel({
    String? contentId,
    String? caption,
    String? thumbnail,
    String? url,
    num? views,
    num? likes,
    DateTime? createdAt,
  }) = _VideoModel;
  factory VideoModel.fromJson(Map<String, Object?> json) =>
      _$VideoModelFromJson(json);
}
