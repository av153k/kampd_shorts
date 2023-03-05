import 'package:dartz/dartz.dart';
import 'package:kampd_shorts/core/core.dart';
import 'package:kampd_shorts/features/home/data/data.dart';

abstract class VideosRepository {
  Future<Either<Failure, List<VideoModel>>> getVideos();
}
