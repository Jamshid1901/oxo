

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/domain/common/failure.dart';
import 'package:oxo/domain/common/token.dart';
import 'package:oxo/domain/common/token_ext.dart';
import 'package:oxo/domain/settings/i_settings_facade.dart';
import 'package:oxo/infrastructure/models/detail/detail.dart';
import 'package:oxo/infrastructure/models/settings/change_email/confirm_email.dart';
import 'package:oxo/infrastructure/models/settings/change_email/new_email.dart';
import 'package:oxo/infrastructure/models/settings/get_me_settings/get_settings_me.dart';
import 'package:oxo/infrastructure/models/settings/password.dart';
import 'package:oxo/infrastructure/models/settings/put_general_info.dart';
import 'package:oxo/infrastructure/services/prefs.dart';

import '../exceptions.dart';
import '../grid_apis.dart';

class SettingsRepository implements ISettingsFacade{

  final PreferenceService _preferenceService;
  final SettingsService _settingsService;

  SettingsRepository(this._preferenceService, this._settingsService);




  @override
  Future<Either<ResponseFailure, General>> getGeneralSettings() async {
    final Token token = _preferenceService.token;

    try {
      final res = await _settingsService.generalSettings(token.toToken);
      if (res.isSuccessful && res.statusCode == 200 && res.body != null) {
       return right(res.body!);

      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError){
        return left(Unknown(message: e.message??'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }

  }

  @override
  Future<Either<ResponseFailure, Detail>> postChangePasswordSettings(PasswordEntity passwordEntity) async {

    final Token token = _preferenceService.token;
    try {
      final res = await _settingsService.chagePasswordSettings(token.toToken,passwordEntity);
      if ((res.isSuccessful && res.statusCode == 200 ) || (res.isSuccessful && res.statusCode == 201 )) {
        return right(res.body!);

      } else {
        return left(InvalidCredentials(message: res.body!.detail ?? 'invalid_credential'.tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      }  else if (e is UnimplementedError){
        return left(Unknown(message: e.message??'unknown_error'.tr()));
      }else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }

  }

  @override
  Future<Either<ResponseFailure, Detail>> postNewEmailSettings(NewEmail newEmailEntity) async {

    final Token token = _preferenceService.token;

    try {
      final res = await _settingsService.postNewEmailSettings(token.toToken, newEmailEntity);
      if (res.isSuccessful && res.statusCode == 200 && res.body != null) {
        return right(res.body!);

      }else  if (res.statusCode == 400) {
        final Map<String, dynamic> error = jsonDecode(res.error.toString());
        return left(InvalidCredentials(message: error['detail']));
      }
      else {
        return left(InvalidCredentials(message: res.body!.detail ?? 'invalid_credential'.tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError){
        return left(Unknown(message: e.message??'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }

  }

  @override
  Future<Either<ResponseFailure, Detail>> confirmEmailSettings(ConfirmEmail confirmEmailEntity) async {
    final Token token = _preferenceService.token;

    try {
      final res = await _settingsService.confirmEmailSettings(token.toToken, confirmEmailEntity);
      if ((res.isSuccessful && res.statusCode == 200 && res.body != null)  || (res.statusCode == 201 && res.isSuccessful)){
        return right(res.body!);

      } else {
        return left(InvalidCredentials(message: res.body!.detail ?? 'invalid_credential'.tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      }  else if (e is UnimplementedError){
        return left(Unknown(message: e.message??'unknown_error'.tr()));
      }else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, Detail>> putGeneralInfoSettings(GeneralInfoEntity generalInfoEntity) async {

    final Token token = _preferenceService.token;

    try {
      final res = await _settingsService.putGeneralInfoSettings(token.toToken, generalInfoEntity);
      if (res.isSuccessful ){
        return right(res.body!);

      } else {
        return left(InvalidCredentials(message: res.body!.detail ?? 'invalid_credential'.tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError){
        return left(Unknown(message: e.message??'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }

  }

  @override
  Future<Either<ResponseFailure, PrivacyPolicy>> getPrivacyPolicySettings() async {
    final Token token = _preferenceService.token;

    try {
      final res = await _settingsService.privacyPolicy(token.toToken,);
      if (res.isSuccessful ){
        return right(res.body!);

      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError){
        return left(Unknown(message: e.message??'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }
}