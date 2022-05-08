part of 'password_bloc.dart';

@freezed
abstract class PasswordState with _$PasswordState {
  factory PasswordState({
    @Default(false) isLoading,
    @Default(false) bool update,
    @Default('') String exception,



  }) = _PasswordState;

}