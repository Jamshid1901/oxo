part of 'email_bloc.dart';

@freezed
abstract class EmailState with _$EmailState {
  factory EmailState({
    @Default(false) isLoading,
    @Default(false) isEmailSend,
    @Default(false) isConfirmed,
    @Default('') String exception,
}) = _EmailState;
}

