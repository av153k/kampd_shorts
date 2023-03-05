import 'package:dartz/dartz.dart';
import 'package:kampd_shorts/core/core.dart';
import 'package:kampd_shorts/features/home/data/data.dart';
import 'package:kampd_shorts/features/home/domain/domain.dart';

class VideosRepositoryImpl implements VideosRepository {
  VideosRepositoryImpl({
    required this.dataSource,
    required this.networkInfo,
  });

  final VideosRemoteDatasource dataSource;
  final NetworkInfo networkInfo;

  @override
  Future<Either<Failure, List<VideoModel>>> getVideos() async {
    if (await networkInfo.isConnected) {
      try {
        final videos = await dataSource.getVideos();
        return Right(videos);
      } on ServerException {
        return const Left(ServerFailure('Something went wrong'));
      }
    } else {
      return const Left(ServerFailure('No Internet Connection'));
    }
  }
}
