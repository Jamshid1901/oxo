

import 'package:oxo/domain/auth/auth_failure.dart';
import 'package:oxo/domain/common/token.dart';

extension TokenX on Token {
  AuthFailure? get hasFailure {
    if (accessToken == null && refreshToken == null) {
      return const AuthFailure.unAuthenticated();
    } else {
      return null;
    }
  }

  String get toToken {
    return 'Bearer $accessToken';
  }
}
