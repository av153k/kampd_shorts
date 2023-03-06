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
    on<HomeEvent>(
      (event, emit) async => await _eventToStateMapper(event, emit),
    );
  }

  Map<VideoModel, VideoPlayerController> controllers = {};

  final VideosRepository _videosRepository;

  FutureOr<void> _eventToStateMapper(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    await event.map(
      init: (_) async {
        await _loadVideos(emit);
      },
      scroll: (ScrollEvent scrollEvent) async {
        await _handleOnScroll(
          scrollEvent.currentIndex,
          emit,
        );
      },
    );
  }

  Future<void> _loadVideos(Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));
    final result = await _videosRepository.getVideos();
    await result.fold(
      (error) async => emit(
        state.copyWith(
          error: error,
          isLoading: false,
        ),
      ),
      (videos) async {
        state.videos.addAll(videos);
        await _initializeAtIndex(0);
        await _playAtIndex(0);
        await _initializeAtIndex(1);
        emit(
          state.copyWith(
            isLoading: false,
            currentPlayingIndex: 0,
          ),
        );
      },
    );
  }

  Future<void> _handleOnScroll(
    int currentIndex,
    Emitter<HomeState> emit,
  ) async {
    if (currentIndex > state.currentPlayingIndex) {
      await _playNextVideo(currentIndex);
    } else {
      await _playPreviousVideo(currentIndex);
    }
    emit(state.copyWith(currentPlayingIndex: currentIndex));
  }

  Future<void> _playNextVideo(int index) async {
    /// Stop previous video
    await _stopAtIndex(index - 1);

    /// Dispose the in cache video
    await _disposeAtIndex(index - 2);

    /// Play current video (already initialized)
    await _playAtIndex(index);

    /// Initialize next controller
    await _initializeAtIndex(index + 1);
  }

  Future<void> _playPreviousVideo(int index) async {
    /// Stop next video
    await _stopAtIndex(index - 1);

    /// Dispose next in cache video
    await _disposeAtIndex(index + 2);

    /// Play current video (already initialized)
    await _playAtIndex(index);

    /// Initialize previous video
    await _initializeAtIndex(index - 1);
  }

  Future<void> _playAtIndex(int index) async {
    if (state.videos.length > index && index >= 0) {
      final controller = state.controllers[state.videos[index]];
      await controller?.play();
    }
  }

  Future<void> _stopAtIndex(int index) async {
    if (state.videos.length > index && index >= 0) {
      final controller = state.controllers[state.videos[index]];
      await controller?.pause();

      await controller?.seekTo(Duration.zero);
    }
  }

  Future<void> _disposeAtIndex(int index) async {
    if (state.videos.length > index && index >= 0) {
      final controller = state.controllers[state.videos[index]];
      await controller?.dispose();

      if (controller != null) {
        state.controllers.remove(state.videos[index]);
      }
    }
  }

  Future<void> _initializeAtIndex(int index) async {
    if (state.videos.length > index && index >= 0) {
      final controller =
          VideoPlayerController.network(state.videos[index].url ?? '');
      state.controllers[state.videos[index]] = controller;
      await controller.initialize();
    }
  }
}
