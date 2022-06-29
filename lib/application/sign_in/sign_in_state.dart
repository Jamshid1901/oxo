part of 'sign_in_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    @Default(false) isLoading,
    @Default(true) bool isEmailValid,
    @Default(true) bool isPasswordValid,
    @Default(false) bool isUsernameExists,
    @Default(false) bool isEmailExists,
    @Default(false) bool navigateToHome,
    @Default(false) bool proceedToGetPassword,
    @Default(false) bool proceedToChangePassword,
    @Default(false) bool proceedToChooseInterests,
    @Default(false) bool proceedToVerifyCode,
    @Default([]) List<int> gameList,
    @Default('') String exception,
    @Default('') String mediaId,
  }) = _SignInState;
}
