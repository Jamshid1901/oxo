import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/domain/common/failure.dart';
import 'package:oxo/domain/common/token_ext.dart';
import 'package:oxo/infrastructure/models/followers/followers_model.dart';
import 'package:oxo/infrastructure/services/prefs.dart';

import '../exceptions.dart';
import '../grid_apis.dart';
class FollowersRepo {
  final FollowersService _followersService;
  FollowersRepo(this._followersService);

  Future<Either<dynamic, FollowersModel>> followersGet(int _id, int _page, bool _hasFriends) async {
    try {
      var token = await PreferenceService.create.then((value) => value.token);
      final res = await _followersService.followers(token.toToken, _id, _page, _hasFriends ? "friends":"followers");

      if (res.isSuccessful && res.body is FollowersModel) {
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


  Future<Either<dynamic, String>> unfollow(UnFollowPostModel data, bool hasUnFollow) async {
    try {
      var token = await PreferenceService.create.then((value) => value.token);
      final res = hasUnFollow ?  await _followersService.unfollow(token.toToken, data) : await _followersService.follow(token.toToken, data);
      if (res.isSuccessful) {
        assert(res.body != null);
        return right(res.body!["detail"]);
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