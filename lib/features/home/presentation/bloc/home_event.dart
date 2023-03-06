part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = InitialEvent;

  const factory HomeEvent.scroll(int currentIndex) =
      ScrollEvent;
}
