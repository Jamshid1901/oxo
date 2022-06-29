part of 'profile_bloc.dart';

@freezed
abstract class ProfileEvent with _$ProfileEvent {

  const factory ProfileEvent.getProfile() = _GetProfile;


  const factory ProfileEvent.getUserSearchHistory() = _GetUserSearchHistory;

  const factory ProfileEvent.postUserSearchHistory({ required UserSearchHistoryPostModel search}) = _PostUserSearchHistory;

  const factory ProfileEvent.deleteUserSearchHistory({ required int id}) = _DeleteUserSearchHistory;

  const factory ProfileEvent.clearUserSearchHistory() = _ClearUserSearchHistory;

  const factory ProfileEvent.getUserProfile({ required int id}) = _GetUserProfile;

  const factory ProfileEvent.getFollowersList({ required int id, required int page, required bool hasFriends}) = _GetFollowersList;

  const factory ProfileEvent.getUsersList({ required String search, required int page}) = _GetUsersList;

  const factory ProfileEvent.unFollow({ required UnFollowPostModel unFollowPostModel, required bool hasUnFollow, required bool isFollowed, required bool isUsersList}) = _UnFollow;

  const factory ProfileEvent.deleteProfilePhoto({required ProfileM profileM}) = _DeleteProfilePhoto;

  const factory ProfileEvent.logout({required LogoutModel logoutModel}) = _Logout;


  const factory ProfileEvent.uploadProfilePhoto(ImageUploadTypes imageUploadTypes) = _UploadProfilePhoto;

}
