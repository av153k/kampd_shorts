// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int currentIndex, int previousIndex) scroll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int currentIndex, int previousIndex)? scroll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int currentIndex, int previousIndex)? scroll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) init,
    required TResult Function(ScrollEvent value) scroll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? init,
    TResult? Function(ScrollEvent value)? scroll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? init,
    TResult Function(ScrollEvent value)? scroll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialEventCopyWith<$Res> {
  factory _$$InitialEventCopyWith(
          _$InitialEvent value, $Res Function(_$InitialEvent) then) =
      __$$InitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitialEvent>
    implements _$$InitialEventCopyWith<$Res> {
  __$$InitialEventCopyWithImpl(
      _$InitialEvent _value, $Res Function(_$InitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialEvent implements InitialEvent {
  const _$InitialEvent();

  @override
  String toString() {
    return 'HomeEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int currentIndex, int previousIndex) scroll,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int currentIndex, int previousIndex)? scroll,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int currentIndex, int previousIndex)? scroll,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) init,
    required TResult Function(ScrollEvent value) scroll,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? init,
    TResult? Function(ScrollEvent value)? scroll,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? init,
    TResult Function(ScrollEvent value)? scroll,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class InitialEvent implements HomeEvent {
  const factory InitialEvent() = _$InitialEvent;
}

/// @nodoc
abstract class _$$ScrollEventCopyWith<$Res> {
  factory _$$ScrollEventCopyWith(
          _$ScrollEvent value, $Res Function(_$ScrollEvent) then) =
      __$$ScrollEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int currentIndex, int previousIndex});
}

/// @nodoc
class __$$ScrollEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ScrollEvent>
    implements _$$ScrollEventCopyWith<$Res> {
  __$$ScrollEventCopyWithImpl(
      _$ScrollEvent _value, $Res Function(_$ScrollEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? previousIndex = null,
  }) {
    return _then(_$ScrollEvent(
      null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      null == previousIndex
          ? _value.previousIndex
          : previousIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ScrollEvent implements ScrollEvent {
  const _$ScrollEvent(this.currentIndex, this.previousIndex);

  @override
  final int currentIndex;
  @override
  final int previousIndex;

  @override
  String toString() {
    return 'HomeEvent.scroll(currentIndex: $currentIndex, previousIndex: $previousIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrollEvent &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.previousIndex, previousIndex) ||
                other.previousIndex == previousIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex, previousIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrollEventCopyWith<_$ScrollEvent> get copyWith =>
      __$$ScrollEventCopyWithImpl<_$ScrollEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(int currentIndex, int previousIndex) scroll,
  }) {
    return scroll(currentIndex, previousIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(int currentIndex, int previousIndex)? scroll,
  }) {
    return scroll?.call(currentIndex, previousIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(int currentIndex, int previousIndex)? scroll,
    required TResult orElse(),
  }) {
    if (scroll != null) {
      return scroll(currentIndex, previousIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) init,
    required TResult Function(ScrollEvent value) scroll,
  }) {
    return scroll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? init,
    TResult? Function(ScrollEvent value)? scroll,
  }) {
    return scroll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? init,
    TResult Function(ScrollEvent value)? scroll,
    required TResult orElse(),
  }) {
    if (scroll != null) {
      return scroll(this);
    }
    return orElse();
  }
}

abstract class ScrollEvent implements HomeEvent {
  const factory ScrollEvent(final int currentIndex, final int previousIndex) =
      _$ScrollEvent;

  int get currentIndex;
  int get previousIndex;
  @JsonKey(ignore: true)
  _$$ScrollEventCopyWith<_$ScrollEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  List<VideoModel> get videos => throw _privateConstructorUsedError;
  Map<VideoModel, VideoPlayerController> get controllers =>
      throw _privateConstructorUsedError;
  int get currentPlayingIndex => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<VideoModel> videos,
      Map<VideoModel, VideoPlayerController> controllers,
      int currentPlayingIndex,
      bool isLoading,
      Object? error});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
    Object? controllers = null,
    Object? currentPlayingIndex = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
      controllers: null == controllers
          ? _value.controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as Map<VideoModel, VideoPlayerController>,
      currentPlayingIndex: null == currentPlayingIndex
          ? _value.currentPlayingIndex
          : currentPlayingIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<VideoModel> videos,
      Map<VideoModel, VideoPlayerController> controllers,
      int currentPlayingIndex,
      bool isLoading,
      Object? error});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videos = null,
    Object? controllers = null,
    Object? currentPlayingIndex = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$_HomeState(
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
      controllers: null == controllers
          ? _value.controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as Map<VideoModel, VideoPlayerController>,
      currentPlayingIndex: null == currentPlayingIndex
          ? _value.currentPlayingIndex
          : currentPlayingIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  _$_HomeState(
      {required this.videos,
      required this.controllers,
      required this.currentPlayingIndex,
      required this.isLoading,
      this.error});

  @override
  final List<VideoModel> videos;
  @override
  final Map<VideoModel, VideoPlayerController> controllers;
  @override
  final int currentPlayingIndex;
  @override
  final bool isLoading;
  @override
  final Object? error;

  @override
  String toString() {
    return 'HomeState(videos: $videos, controllers: $controllers, currentPlayingIndex: $currentPlayingIndex, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other.videos, videos) &&
            const DeepCollectionEquality()
                .equals(other.controllers, controllers) &&
            (identical(other.currentPlayingIndex, currentPlayingIndex) ||
                other.currentPlayingIndex == currentPlayingIndex) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(videos),
      const DeepCollectionEquality().hash(controllers),
      currentPlayingIndex,
      isLoading,
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {required final List<VideoModel> videos,
      required final Map<VideoModel, VideoPlayerController> controllers,
      required final int currentPlayingIndex,
      required final bool isLoading,
      final Object? error}) = _$_HomeState;

  @override
  List<VideoModel> get videos;
  @override
  Map<VideoModel, VideoPlayerController> get controllers;
  @override
  int get currentPlayingIndex;
  @override
  bool get isLoading;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
