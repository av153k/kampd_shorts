part of 'home_bloc.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class HomeState with _$HomeState {
  factory HomeState({
    required List<VideoModel> videos,
    required Map<VideoModel, VideoPlayerController> controllers,
    required int currentPlayingIndex,
    required bool isLoading,
    Object? error,
  }) = _HomeState;

  factory HomeState.initial() => HomeState(
        videos: [],
        controllers: {},
        currentPlayingIndex: 0,
        isLoading: false,
      );
}
