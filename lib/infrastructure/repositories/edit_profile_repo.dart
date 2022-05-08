

import 'package:dartz/dartz.dart';
import 'package:easy_localization/src/public_ext.dart';
import 'package:oxo/domain/common/failure.dart';
import 'package:oxo/domain/common/token_ext.dart';
import 'package:oxo/domain/edit_profile/i_edit_profile_facade.dart';
import 'package:oxo/infrastructure/models/detail/detail.dart';
import 'package:oxo/infrastructure/models/edit_profile/edit_profile.dart';
import 'package:oxo/infrastructure/services/prefs.dart';


import '../exceptions.dart';
import '../grid_apis.dart';

class EditProfileRepository implements IEditProfileFacade{


  EditProfileRepository(this._editProfileService);

  final EditProfileService _editProfileService;

  @override
  Future<Either<ResponseFailure, String>> putEventEdit(ProfileM editPModel) async {
    var token = await PreferenceService.create.then((value) => value.token.accessToken);

    try {
        return right('success');

    } catch (e) {
      print(e);
      if (e is NetworkException) {

        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError){
        return left(Unknown(message: e.message??'unknown_error'.tr()));
      }
      else {

        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<ResponseFailure, Detail>> checkUserName(UserNameM userName) async {
    var token = await PreferenceService.create.then((value) => value.token);

    try {
      final res = await _editProfileService.checkUserName(token.toToken, userName);

      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!);
      } else {
        return left(Unknown(message: res.body!.detail ?? 'unknown_error'.tr()));
      }
    } catch (e) {
      print(e);
      if (e is NetworkException) {

        return left(NetworkFailure(message: 'network_error'.tr()));
      } else if (e is UnimplementedError){
        return left(Unknown(message: e.message??'unknown_error'.tr()));
      }
      else {

        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }
}
