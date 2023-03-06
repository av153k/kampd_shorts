import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:kampd_shorts/core/core.dart';
import 'package:kampd_shorts/features/home/home.dart';

final getIt = GetIt.instance;

Future<void> injectDependencies() async {
  getIt
    ..registerLazySingleton<InternetConnectionChecker>(
        InternetConnectionChecker.createInstance,)
    ..registerLazySingleton<Dio>(Dio.new)
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
    ..registerLazySingleton<VideosRepository>(
      () => VideosRepositoryImpl(
        dataSource: getIt(),
        networkInfo: getIt(),
      ),
    )
    ..registerFactory<HomeBloc>(
      () => HomeBloc(getIt()),
    );
}
