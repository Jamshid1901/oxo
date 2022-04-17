import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.invalidCredential({
    required String message,
  }) = InvalidCredentials;

  const factory AuthFailure.networkFailure({
    required String message,
  }) = NetworkFailure;

  const factory AuthFailure.unknown({
    required String message,
  }) = Unknown;
}
