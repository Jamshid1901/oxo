part of 'general_bloc.dart';

@freezed
abstract class SettingsState with _$SettingsState {


   factory SettingsState({
   @Default(false) isLoading,
   @Default('gender') String? gender,
   @Default('2022-01-01') String?  dob,
   @Default('email') String?  email,
   @Default(false) bool lfgSearch,
   @Default(false) bool privateAccount,
   @Default('') String exception,
   @Default(false) bool isUpdated,
   @Default(null) PrivacyPolicy? privacyPolicy,



  }) = _SettingsState;

}

