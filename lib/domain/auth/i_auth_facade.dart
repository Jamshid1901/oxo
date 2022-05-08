import 'package:dartz/dartz.dart';

import 'auth_failure.dart';

abstract class IAutFacade {
  Option<AuthFailure> getUser();
}
