part of 'main_bloc.dart';

@freezed
abstract class MainState with _$MainState {
  const MainState._();
  const factory MainState({
    @Default(0) int index,
    @Default(false) bool isLoading,
    @Default(false) bool isRunnerActivated,
  }) = _MainState;

  BottomNavigation get currentNavigationItem => bottomNavigationItems[index];

  List<BottomNavigation> get bottomNavigationItems => BottomNavigation.values;
}
