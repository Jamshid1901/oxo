
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:oxo/infrasturture/repositories/auth_repository.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _auth;
  AuthBloc(this._auth) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent gEvent) async* {
    yield* gEvent.map(
      authCheckRequested: _authCheckRequested,
      signedOut: _signedOut,
    );
  }

  Stream<AuthState> _authCheckRequested(AuthCheckRequested value) async* {
    final user = _auth.getUser();

    yield user.fold(
      () => const AuthState.unauthenticated(),
      (a) => const AuthState.authenticated(),
    );
  }

  Stream<AuthState> _signedOut(SignedOut value) async* {}
}
