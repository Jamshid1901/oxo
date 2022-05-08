import 'package:dartz/dartz.dart';
import 'package:oxo/domain/common/resend_code.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart';

import 'auth_failure.dart';

abstract class ISignInFacade {
  Future<Option<SignInFailure>> login(Login login);

  Future<Either<SignInFailure, SocialSignIn>> socialSignIn(SocialSignIn data);

  Future<Option<SignInFailure>> forgotPassword(ForgotPassword data);

  Future<Option<SignInFailure>> verifyCode(
      VerifyCode data, ResendCodeType type);

  Future<Option<SignInFailure>> newPassword(NewPassword data);

  Future<Either<SignInFailure, GameList>> getGameList();

  Future<Option<SignInFailure>> signUp(SignUp signUp);

  Future<Option<SignInFailure>> favouriteGames(FavouriteGames data);
}
