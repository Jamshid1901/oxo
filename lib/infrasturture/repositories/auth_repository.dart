
import 'package:dartz/dartz.dart';
import 'package:oxo/domain/auth/auth_failure.dart';
import 'package:oxo/domain/auth/i_auth_facade.dart';
import 'package:oxo/infrasturture/prefs/preference_service.dart';


class AuthRepository implements IAuthFacade {
  final PreferencesService _prefs;

  const AuthRepository(
      this._prefs,
      );

  @override
  Option<String> getUser() {
    return optionOf(_prefs.getUserToken);
  }

  @override
  Future<AuthFailure?> signIn() {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<AuthFailure?> signUp() {
    // TODO: implement signUp
    throw UnimplementedError();
  }


}
