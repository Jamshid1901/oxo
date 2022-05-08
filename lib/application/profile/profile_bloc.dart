import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oxo/domain/profile/image_upload_types.dart';
import 'package:oxo/infrastructure/models/edit_profile/edit_profile.dart';
import 'package:oxo/infrastructure/models/followers/followers_model.dart';
import 'package:oxo/infrastructure/models/profile/profile.dart';
import 'package:oxo/infrastructure/models/profile/user_search_history.dart';
import 'package:oxo/infrastructure/repositories/image_upload_repo.dart';
import 'package:oxo/infrastructure/repositories/profile_repo.dart';
import 'package:oxo/infrastructure/shared_variables.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._repository, this._imageUploadRepo) : super(const _ProfileState());

  final ProfileRepository _repository;
  final ImageUploadRepo _imageUploadRepo;


  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    yield* event.map(
      clearUserSearchHistory: _clearUserSearchHistory,
      deleteUserSearchHistory: _deleteUserSearchHistory,
      postUserSearchHistory: _postUserSearchHistory,
      getProfile: _getProfile,
      getUserProfile: _getUserProfile,
      getFollowersList: _getFollowersList,
      getUsersList: _getUsersList,
      getUserSearchHistory: _getUserSearchHistoryList,
      unFollow: _unFollow,
      deleteProfilePhoto: _deleteProfilePhoto,
      uploadProfilePhoto:_uploadProfilePhoto,
    );
  }

  Stream<ProfileState> _getProfile(_GetProfile value) async* {
    yield state.copyWith(isLoading: true, exception: '', isLoadingVProfile: true);

    final res = await _repository.getProfileModel();

    yield* res.fold(
          (error) async* {
        yield state.copyWith(isLoading: false, exception: error.message, isLoadingVProfile: false);
      },
          (profile) async* {
        ConstVariables.isLinkExist = (profile.link != null);
        ConstVariables.isBioExist = (profile.bio != null);

        ConstVariables.avatarId = profile.profileAvatarModel?.id ?? -1;
        ConstVariables.backgroundId = profile.profileBackgroundModel?.id ?? -1;
        yield state.copyWith(
          isLoading: false,
          isLoadingVProfile: false,
          profileModel: profile,
          id: profile.id,
          userName: profile.userName,
          bio: profile.bio,
          link: profile.link,
          isVerified: profile.isVerified,
          followerCount: profile.followerCount,
          friendsCount: profile.friendsCount,
          hostedCount: profile.hostedCount,
          typeUser: profile.typeUser,
          avatarFile: profile.profileAvatarModel?.file,
          avatarId: profile.profileAvatarModel?.id,
          backgroundFile: profile.profileBackgroundModel?.file,
          backgroundId: profile.profileBackgroundModel?.id,
        );
      },
    );
  }

  Stream<ProfileState> _getUserProfile(_GetUserProfile value) async* {
    yield state.copyWith(isLoading: true, exception: '');

    final res = await _repository.getUserProfileModel(value.id);

    yield* res.fold(
          (error) async* {
        yield state.copyWith(isLoading: false, exception: error.message);
      },
          (profile) async* {
        ConstVariables.isLinkExist = (profile.link != null);
        ConstVariables.isBioExist = (profile.bio != null);

        ConstVariables.avatarId = profile.profileAvatarModel?.id ?? -1;
        ConstVariables.backgroundId = profile.profileBackgroundModel?.id ?? -1;
        yield state.copyWith(
            isLoading: false,
            id: profile.id,
            userName: profile.userName,
            bio: profile.bio,
            link: profile.link,
            isVerified: profile.isVerified,
            followerCount: profile.followerCount,
            friendsCount: profile.friendsCount,
            hostedCount: profile.hostedCount,
            typeUser: profile.typeUser,
            avatarFile: profile.profileAvatarModel?.file,
            avatarId: profile.profileAvatarModel?.id,
            backgroundFile: profile.profileBackgroundModel?.file,
            backgroundId: profile.profileBackgroundModel?.id,
            isFollowed: profile.follow,
            companyName: profile.companyName,
            isHimself: profile.isHimself);
      },
    );
  }


  Stream<ProfileState> _getFollowersList(
      _GetFollowersList getFollowersList) async* {
    yield state.copyWith(isLoading: true);
    final res = await _repository.followersGet(getFollowersList.id,
        getFollowersList.page, getFollowersList.hasFriends);
    yield* res.fold(
          (error) async* {
        yield state.copyWith(
          isLoading: false,
          exception: error.message,
        );
      },
          (followers) async* {
        yield state.copyWith(
            isLoading: false, followersList: followers.results!.toList());
      },
    );
  }

  Stream<ProfileState> _getUsersList(_GetUsersList getUsersList) async* {
    yield state.copyWith(isLoading: true);
    final res =
    await _repository.usersGet(getUsersList.search, getUsersList.page);
    yield* res.fold(
          (error) async* {
        yield state.copyWith(
          isLoading: false,
          exception: error.message,
        );
      },
          (followers) async* {
        yield state.copyWith(
            isLoading: false, usersList: followers.results!.toList());
      },
    );
  }

  Stream<ProfileState> _getUserSearchHistoryList(_GetUserSearchHistory getUsersList) async* {
    yield state.copyWith(isLoading: true);
    final res =
    await _repository.userSearchHistoryGet();
    yield* res.fold(
          (error) async* {
        yield state.copyWith(
          isLoading: false,
          exception: error.message,
        );
      },
          (userSearchHistoryList) async* {
        print(userSearchHistoryList);
        yield state.copyWith(
            isLoading: false, userSearchHistoryList:  userSearchHistoryList.results!.toList());
      },
    );
  }

  Stream<ProfileState> _postUserSearchHistory(_PostUserSearchHistory _postUserSearchHistory) async* {
    final res =
    await _repository.userSearchHistoryPost(_postUserSearchHistory.search);
    yield* res.fold(
          (error) async* {
        yield state.copyWith(
          isLoading: false,
          exception: error.message,
        );
      },
          (success) async* {
        List<UserSearchHistoryResultModel?>  _userSearchHistoryResultList = List.from(state.userSearchHistoryList);
        _userSearchHistoryResultList.add(success);
        yield state.copyWith(
            isLoading: false, userSearchHistoryList: List.from(_userSearchHistoryResultList));
      },
    );
  }

  Stream<ProfileState> _deleteUserSearchHistory(_DeleteUserSearchHistory _deleteUserSearchHistory) async* {
    final res =
    await _repository.deleteUserSearchHistoryPost(_deleteUserSearchHistory.id);
    yield* res.fold(
          (error) async* {
        yield state.copyWith(
          isLoading: false,
          exception: error.message,
        );
      },
          (delete) async* {
        List<UserSearchHistoryResultModel?>  _userSearchHistoryResultList = List.from(state.userSearchHistoryList);
        _userSearchHistoryResultList.removeWhere((element) =>
        element!.id == _deleteUserSearchHistory.id);
        yield state.copyWith(
            isLoading: false, userSearchHistoryList: List.from(_userSearchHistoryResultList));
      },
    );
  }

  Stream<ProfileState> _clearUserSearchHistory(_ClearUserSearchHistory _clearUserSearchHistory) async* {
    final res =
    await _repository.clearUserSearchHistoryGet();
    yield* res.fold(
          (error) async* {
        yield state.copyWith(
          isLoading: false,
          exception: error.message,
        );
      },
          (delete) async* {
        yield state.copyWith(
            isLoading: false, userSearchHistoryList: []);
      },
    );
  }

  Stream<ProfileState> _unFollow(_UnFollow unFollow) async* {
    yield state.copyWith(isButtonLoading: true);
    final res = await _repository.unfollow(
        unFollow.unFollowPostModel, unFollow.hasUnFollow);
    yield* res.fold(
          (error) async* {
        yield state.copyWith(
          isButtonLoading: false,
          exception: error.message,
        );
      },
          (unFollowDetail) async* {
        List<Results?> _followerList = List.from(state.followersList);
        if(_followerList.isNotEmpty) {
          int index = _followerList.indexWhere((element) =>
          element!.id == unFollow.unFollowPostModel.followingUser);
          _followerList[index] = _followerList[index]!
              .rebuild((p0) => p0..follow = !unFollow.hasUnFollow);
        }
        List<Results?> _userList = List.from(state.usersList);
        if(_userList.isNotEmpty) {
          int index = _userList.indexWhere((element) =>
          element!.id == unFollow.unFollowPostModel.followingUser);
          _userList[index] = _userList[index]!
              .rebuild((p0) => p0..follow = !unFollow.hasUnFollow);
        }
        if (unFollow.isFollowed) {
          int _followersCount = state.followerCount ?? 0;
          yield state.copyWith(
              followersList: List.from(_followerList),
              usersList: List.from(_userList),
              isFollowed: !unFollow.hasUnFollow,
              isButtonLoading: false,
              followerCount: unFollow.hasUnFollow
                  ? _followersCount - 1
                  : _followersCount + 1);
        } else {
          int _friendsCount = state.friendsCount ?? 0;
          yield state.copyWith(
            usersList: List.from(_userList),
            followersList: List.from(_followerList),
            isFollowed: !unFollow.hasUnFollow,
            friendsCount:
            unFollow.hasUnFollow ? _friendsCount - 1 : _friendsCount + 1,
            isButtonLoading: false,
          );
        }
      },
    );
  }

  Stream<ProfileState> _deleteProfilePhoto(_DeleteProfilePhoto value) async* {

    yield state.copyWith(
      exception: '',

    );

    final res = await _repository.deleteProfilePhoto(value.profileM);

    yield* res.fold(
            (error) async*{
          yield state.copyWith(
            exception: error.message,

          );
        },
            (result) async*{

          yield state.copyWith(
            exception: 'success',

          );
        }
    );


  }

  Stream<ProfileState> _uploadProfilePhoto(_UploadProfilePhoto value) async* {

    yield state.copyWith(
      exception: '',
      isLoading: true,

    );
    final ImagePicker _picker = ImagePicker();

    try{
      final XFile? image = await _picker.pickImage(source: ImageSource.gallery);


      if(image != null){

        File? croppedFile = await ImageCropper().cropImage(
            sourcePath: image.path,
            aspectRatio: value.imageUploadTypes == ImageUploadTypes.avatarPhoto
                ? const CropAspectRatio(ratioX: 1, ratioY: 1)
                : const CropAspectRatio(ratioX: 2, ratioY: 1),

            androidUiSettings: const AndroidUiSettings(
                toolbarTitle: 'Cropper',
                toolbarColor: Colors.deepOrange,
                toolbarWidgetColor: Colors.white,
                initAspectRatio: CropAspectRatioPreset.original,
                lockAspectRatio: false),
            iosUiSettings: const IOSUiSettings(
              minimumAspectRatio: 1.0,
            )
        );

        if(croppedFile != null){
          final res = await _imageUploadRepo.imageUpload(croppedFile.path);

          yield* res.fold(
                  (error) async*{
                yield state.copyWith(
                  exception: error.message,
                  isLoading: false,
                );
              },
                  (result) async*{
                ProfileM _profileM = ProfileM(userName: state.userName!, bio: state.bio, link: state.link,
                    avatarM: value.imageUploadTypes == ImageUploadTypes.avatarPhoto ? result.id : state.avatarId,
                    backgroundM: value.imageUploadTypes == ImageUploadTypes.backgroundPhoto ? result.id : state.backgroundId);

                final res = await _repository.uploadProfilePhoto(_profileM);

                yield* res.fold(
                        (error) async*{
                      yield state.copyWith(
                        exception: error.message,
                        isLoading: false,

                      );
                    },
                        (result) async*{

                      yield state.copyWith(
                        exception: 'success',
                        isLoading: false,

                      );
                    }
                );

                ConstVariables.avatarId = result.id!;
                yield state.copyWith(
                  exception: '',
                  isLoading: false,

                );
              }
          );
        }else{
          yield state.copyWith(
            isLoading: false,

          );
        }


      }else{
        yield state.copyWith(
          isLoading: false,

        );
      }


    }on PlatformException catch (e){
      print('FAILED TO LOAD image $e');
      yield state.copyWith(
        exception: '${e.message}',
        isLoading: false,

      );
    }
  }
}
