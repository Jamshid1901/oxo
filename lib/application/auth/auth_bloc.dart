import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oxo/infrastructure/repositories/auth_repo.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _repository;
  AuthBloc(this._repository) : super(const _Initial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.map(
      checkAuth: _checkAuth,
    );
  }

  Stream<AuthState> _checkAuth(_CheckAuth value) async* {
    final failure = _repository.getUser();

    yield* failure.fold(
      () async* {
        yield const AuthState.authenticated();
      },
      (f) async* {
        yield const AuthState.unAuthenticated();
      },
    );
  }
}
