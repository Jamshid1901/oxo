
import 'package:dartz/dartz.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  Option<String> getUser();

  Future<AuthFailure?> signIn();


  Future<AuthFailure?> signUp();

}
