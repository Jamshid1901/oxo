part of 'email_bloc.dart';

@freezed
abstract class EmailEvent with _$EmailEvent {

  factory EmailEvent.sendNewEmail({ required NewEmail newEmail } )=_SendNewEmail;
  factory EmailEvent.confirmEmail({ required ConfirmEmail confirmEmail } )=_ConfirmEmail;
  factory EmailEvent.resendEmail({ required NewEmail newEmail })=_resendEmail;

}
