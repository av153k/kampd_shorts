import 'package:dio/dio.dart';
import 'package:kampd_shorts/core/core.dart';
import 'package:kampd_shorts/features/home/data/models/video_model.dart';

abstract class VideosRemoteDatasource {
  Future<List<VideoModel>> getVideos();
}

class VideosRemoteDatasourceImpl implements VideosRemoteDatasource {
  VideosRemoteDatasourceImpl(this._client);
  final Dio _client;

  @override
  Future<List<VideoModel>> getVideos() async {
    final response = await _client.get<List<Map<String, dynamic>>>(
      'http://kampd-assignment.s3-website-ap-southeast-1.amazonaws.com/',
    );

    final isValidResponse = response.statusCode == 200 &&
        response.data != null &&
        response.data is List<Map<String, dynamic>>;
    if (isValidResponse) {
      return (response.data ?? <Map<String, dynamic>>[])
          .map(VideoModel.fromJson)
          .toList();
    } else {
      throw ServerException('Something went wrong');
    }
  }
}
