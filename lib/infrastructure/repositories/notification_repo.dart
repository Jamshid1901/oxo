import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/domain/common/failure.dart';
import 'package:oxo/domain/common/token_ext.dart';
import 'package:oxo/infrastructure/models/notification/notification_model.dart';
import 'package:oxo/infrastructure/models/notification_setting/notification_setting.dart';
import 'package:oxo/infrastructure/services/prefs.dart';

import '../exceptions.dart';
import '../grid_apis.dart';
class NotificationRepo {
  final NotificationService _notificationService;
  NotificationRepo(this._notificationService);

  Future<Either<ResponseFailure, NotificationSetting>> notificationSettingGet() async {
    try {
      var token = await PreferenceService.create.then((value) => value.token);
      final res = await _notificationService.getSettingNotification(token.toToken);

      if (res.isSuccessful && res.body is NotificationSetting) {
        assert(res.body != null);
        return right(res.body!);
      } else {
        print(res.statusCode);
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    } catch (e) {
      print(e);
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      }  else if (e is UnimplementedError){
        return left(Unknown(message: e.message??'unknown_error'.tr()));
      }else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  Future<Either<ResponseFailure, NotificationSetting>> notificationSettingPut(NotificationSetting _notificationSetting) async {
    try {
      var token = await PreferenceService.create.then((value) => value.token);
      final res = await _notificationService.putSettingNotification(token.toToken, _notificationSetting);

      if (res.isSuccessful && res.body is NotificationSetting) {
        assert(res.body != null);
        return right(res.body!);
      } else {

        return left(Unknown(message: 'unknown_error'.tr()));
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

  Future<Either<ResponseFailure, NotificationModel>> notificationGet(int pageNumber) async {
    try {
      var token = await PreferenceService.create.then((value) => value.token);
      final res = await _notificationService.getNotifications(token.toToken,pageNumber);
      if (res.isSuccessful && res.body is NotificationModel) {
        assert(res.body != null);
        return right(res.body!);
      } else {
        print(res.statusCode);
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    } catch (e) {
      print(e);
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