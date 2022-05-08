part of 'general_bloc.dart';

@freezed
abstract class SettingsEvent  with _$SettingsEvent{
  const factory SettingsEvent.getGeneralSettings() = _GetGeneralSettings;
  const factory SettingsEvent.getPrivacyPolicy() = _GetPrivacyPolicy;
  const factory SettingsEvent.putGeneralInfoSettings({
   required GeneralInfoEntity generalInfoEntity
}) = _PutGeneralInfoSettings;
}
