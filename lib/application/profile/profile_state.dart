part of 'profile_bloc.dart';

@freezed
abstract class ProfileState with _$ProfileState {

  const factory ProfileState({
    @Default(null) ProfileModel?  profileModel,
    @Default(0) int?  id,
    @Default(false) bool? isLoading,
    @Default(false) bool isLoadingVProfile,
    @Default(false) bool? isButtonLoading,
    @Default('') String exception,
    @Default('')  String? userName,
    @Default('') String? bio,
    @Default('') String? link,
    @Default(false) bool? isVerified,
    @Default('') String? typeUser,
    @Default(0) int? followerCount,
    @Default(0) int? friendsCount,
    @Default(0) int? hostedCount ,
    @Default('') String? companyName ,


    @Default(-1) int? avatarId,
    @Default('') String? avatarFile,
    @Default(-1) int? backgroundId,
    @Default('') String? backgroundFile,


    @Default([]) List<Results?> followersList,

    @Default([]) List<Results?> usersList,

    @Default(false) bool? isFollowed,

    @Default(false) bool? isHimself,

    @Default([]) List<UserSearchHistoryResultModel?> userSearchHistoryList,
  }) = _ProfileState;

}