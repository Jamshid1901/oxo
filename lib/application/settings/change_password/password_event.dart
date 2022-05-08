part of 'password_bloc.dart';

@freezed
abstract class PasswordEvent with _$PasswordEvent {
  factory PasswordEvent.changePassword({required PasswordEntity passwordEntity,required String confirmedEmail}) = _ChangePassword;
}