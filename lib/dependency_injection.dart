import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:kampd_shorts/core/core.dart';
import 'package:kampd_shorts/features/home/home.dart';

final getIt = GetIt.instance;

Future<void> injectDependencies() async {
  getIt
    ..registerLazySingleton<VideosRepository>(
      () => VideosRepositoryImpl(
        dataSource: getIt(),
        networkInfo: getIt(),
      ),
    )
    ..registerLazySingleton<VideosRemoteDatasource>(
      () => VideosRemoteDatasourceImpl(
        getIt(),
      ),
    )
    ..registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(
        getIt(),
      ),
    )

    ..registerLazySingleton<Dio>(Dio.new);
}
