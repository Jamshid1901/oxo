


import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/domain/common/failure.dart';
import 'package:oxo/domain/common/token.dart';
import 'package:oxo/domain/common/token_ext.dart';
import 'package:oxo/domain/profile/i_profile_facade.dart';
import 'package:oxo/infrastructure/models/edit_profile/edit_profile.dart';
import 'package:oxo/infrastructure/models/followers/followers_model.dart';
import 'package:oxo/infrastructure/models/profile/profile.dart';
import 'package:oxo/infrastructure/models/profile/user_search_history.dart';
import 'package:oxo/infrastructure/services/prefs.dart';

import '../exceptions.dart';
import '../grid_apis.dart';

class ProfileRepository implements IProfileFacade{

  final PreferenceService _preferenceService;
  final ProfileService _profileService;
  final FollowersService _followersService;

  ProfileRepository(this._preferenceService, this._profileService,this._followersService);


  @override
  Future<Either<ResponseFailure, ProfileModel>> getProfileModel() async {
    final Token token = _preferenceService.token;

    try {
      final res = await _profileService.getProfileData(token.toToken);
      if (res.isSuccessful && res.statusCode == 200 && res.body != null) {
        _preferenceService.setId(res.body!.id);
        _preferenceService.setIsVendor(res.body!.typeUser == 'vendor_user');
        _preferenceService.setProfileImage(res.body?.profileAvatarModel?.file);
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
  Future<Either<ResponseFailure, ProfileModel>> getUserProfileModel(int id) async {
    final Token token = _preferenceService.token;

    try {
      final res = await _profileService.getUserProfileData(id,token.toToken);
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


  Future<Either<ResponseFailure, FollowersModel>> followersGet(int _id, int _page, bool _hasFriends) async {
    final Token token = _preferenceService.token;
    try {
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
      } else if (e is UnimplementedError){
        return left(Unknown(message: e.message??'unknown_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  Future<Either<ResponseFailure, FollowersModel>> usersGet(String search, int _page) async {
    final Token token = _preferenceService.token;
    try {
      final res = await _followersService.users(token.toToken,  _page, search);

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

  Future<Either<ResponseFailure, UserSearchHistoryResultModel>> userSearchHistoryPost(UserSearchHistoryPostModel search) async {
    final Token token = _preferenceService.token;
    try {
      final res = await _followersService.userSearchHistoryPost(token.toToken,  search);
      if (res.isSuccessful && res.body is UserSearchHistoryResultModel) {
        assert(res.body != null);
        return right(res.body!);
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
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

  Future<Either<ResponseFailure, String>> deleteUserSearchHistoryPost(int id) async {
    final Token token = _preferenceService.token;
    try {
      final res = await _followersService.deleteUserSearchHistory(token.toToken,  id);
      print("res.statusCode ${res.statusCode}");
      if (res.isSuccessful) {
        return right("success");
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
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

  Future<Either<ResponseFailure, String>> clearUserSearchHistoryGet() async {
    final Token token = _preferenceService.token;
    try {
      final res = await _followersService.clearUserSearchHistory(token.toToken);
      print("res.statusCode ${res.statusCode}");
      if (res.isSuccessful) {
        return right("success");
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
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

  Future<Either<ResponseFailure, UserSearchHistoryModel>> logout(LogoutModel data) async {
    final Token token = _preferenceService.token;
    try {
      final res = await _followersService.logout(token.toToken,data);
      if (res.isSuccessful && res.body is UserSearchHistoryModel) {
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

  Future<Either<ResponseFailure, UserSearchHistoryModel>> userSearchHistoryGet() async {
    final Token token = _preferenceService.token;
    try {
      final res = await _followersService.userSearchHistory(token.toToken);
      if (res.isSuccessful && res.body is UserSearchHistoryModel) {
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


  Future<Either<ResponseFailure, String>> unfollow(UnFollowPostModel data, bool hasUnFollow) async {
    final Token token = _preferenceService.token;
    try {
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

  @override
  Future<Either<ResponseFailure, String>> deleteProfilePhoto(ProfileM editPModel) async {

    var token = await PreferenceService.create.then((value) => value.token.accessToken);

    try {
        return right('success');

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

  @override
  Future<Either<ResponseFailure, String>> uploadProfilePhoto(ProfileM editPModel) async {
    var token = await PreferenceService.create.then((value) => value.token.accessToken);
    try {
        return right('success');

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