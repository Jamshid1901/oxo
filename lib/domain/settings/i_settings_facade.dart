


import 'package:dartz/dartz.dart';
import 'package:oxo/domain/common/failure.dart';
import 'package:oxo/infrastructure/models/detail/detail.dart';
import 'package:oxo/infrastructure/models/settings/change_email/confirm_email.dart';
import 'package:oxo/infrastructure/models/settings/change_email/new_email.dart';
import 'package:oxo/infrastructure/models/settings/get_me_settings/get_settings_me.dart';
import 'package:oxo/infrastructure/models/settings/password.dart';
import 'package:oxo/infrastructure/models/settings/put_general_info.dart';

abstract class ISettingsFacade{

  Future<Either<ResponseFailure, General>> getGeneralSettings();
  Future<Either<ResponseFailure, PrivacyPolicy>> getPrivacyPolicySettings();
  Future<Either<ResponseFailure, Detail>> putGeneralInfoSettings(GeneralInfoEntity generalInfoEntity);
  Future<Either<ResponseFailure, Detail>> postChangePasswordSettings(PasswordEntity passwordEntity);
  Future<Either<ResponseFailure, Detail>> postNewEmailSettings(NewEmail newEmailEntity);
  Future<Either<ResponseFailure, Detail>> confirmEmailSettings(ConfirmEmail confirmEmailEntity);

}