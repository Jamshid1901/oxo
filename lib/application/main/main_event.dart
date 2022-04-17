part of 'main_bloc.dart';

@freezed
abstract class MainEvent with _$MainEvent {
  const factory MainEvent.tabChanged(
    int tabIndex,
  ) = _TabChanged;

  const factory MainEvent.load({
    required bool isLoading,
  }) = _Load;
}
