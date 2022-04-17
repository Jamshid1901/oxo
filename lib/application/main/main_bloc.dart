
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oxo/domain/common/main_page_tabs.dart';

part 'main_state.dart';
part 'main_event.dart';
part 'main_bloc.freezed.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const _MainState());

  @override
  Stream<MainState> mapEventToState(MainEvent event) async* {
    yield* event.map(tabChanged: _tabChanged, load: _load);
  }

  Stream<MainState> _tabChanged(_TabChanged value) async* {
    yield state.copyWith(index: value.tabIndex);
  }

  Stream<MainState> _load(_Load value) async* {
    yield state.copyWith(isRunnerActivated: value.isLoading);
  }
}
