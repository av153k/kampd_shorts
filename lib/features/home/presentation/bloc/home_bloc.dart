import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kampd_shorts/features/home/data/data.dart';
import 'package:kampd_shorts/features/home/domain/domain.dart';
import 'package:video_player/video_player.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._videosRepository) : super(HomeState.initial()) {
    on<HomeEvent>(_eventMapper);
  }
  final VideosRepository _videosRepository;

  Map<VideoModel, VideoPlayerController> controllers = {};

  Future<void> _loadVideos(Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final result = await _videosRepository.getVideos();
      result.fold(
        (error) => emit(
          state.copyWith(
            error: error,
            isLoading: false,
          ),
        ),
        (videos) {
          emit(
            state.copyWith(
              currentPlayingIndex: 0,
              videos: videos,
            ),
          );
        },
      );
    } catch (e) {
      emit(
        state.copyWith(
          error: e,
          isLoading: false,
        ),
      );
    }
  }

  Future<void> _handleOnScroll(
    int currentIndex,
    int previousIndex,
    Emitter<HomeState> emit,
  ) async {}

  FutureOr<void> _eventMapper(HomeEvent event, Emitter<HomeState> emit) {
    event.map(
      init: (_) {
        _loadVideos(emit);
      },
      scroll: (ScrollEvent scrollEvent) {
        _handleOnScroll(
          scrollEvent.currentIndex,
          scrollEvent.previousIndex,
          emit,
        );
      },
    );
  }

  _playAtIndex(int index) {}

  _stopAtIndex(int index) {}

  _disposeAtIndex(int index) {}

  _initializeAtIndex(int index) {}
}
