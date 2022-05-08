import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class SignInFailure with _$SignInFailure {
  const factory SignInFailure.invalidCredential({
    required String message,
  }) = InvalidCredentials;

  const factory SignInFailure.networkFailure({
    required String message,
  }) = NetworkFailure;

  const factory SignInFailure.unknown({
    required String message,
  }) = Unknown;
}
