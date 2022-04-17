part of 'auth.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheckRequested() = AuthCheckRequested;

  const factory AuthEvent.signedOut() = SignedOut;
}
