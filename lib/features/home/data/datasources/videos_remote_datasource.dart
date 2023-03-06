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
    final response = await _client.get<Map<String, dynamic>>(
      'http://kampd-assignment.s3-website-ap-southeast-1.amazonaws.com/',
    );
    final data = response.data?['data'];
    final isValidResponse =
        response.statusCode == 200 && data != null && data is List<dynamic>;
    if (isValidResponse) {
      return data
          .map((e) => VideoModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw ServerException('Something went wrong');
    }
  }
}
