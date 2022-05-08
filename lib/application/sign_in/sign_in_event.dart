part of 'sign_in_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {
  factory SignInEvent.login({
    required Login login,
  }) = _Login;

  factory SignInEvent.signUp({
    required SignUp login,
  }) = _SignUp;

  factory SignInEvent.forgotPassword({
    required ForgotPassword email,
  }) = _ForgotPassword;

  factory SignInEvent.resend({
    required ForgotPassword email,
  }) = _Resend;


  factory SignInEvent.verifyCode({
    required VerifyCode code,
    required ResendCodeType type,
  }) = _VerifyCode;

  factory SignInEvent.newPassword({
    required NewPassword newPassword,
  }) = _NewPassword;

  factory SignInEvent.addToGame({
    required int id,
    required AddOrRemove action,
  }) = _AddToGame;

  factory SignInEvent.getGameList() = _GetGameList;

  factory SignInEvent.addFavouriteGames({
    required FavouriteGames games,
  }) = _AddFavouriteGames;
}
