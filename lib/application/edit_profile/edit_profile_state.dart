part of 'edit_profile_bloc.dart';

@freezed
abstract class EditProfileState with _$EditProfileState{

  const factory EditProfileState({
    @Default(false) bool? isSuccess,
    @Default('') String? exception,
    @Default(false) bool? isLoading,

    @Default(false) bool? isLoadingAvatar,
    @Default(false) bool? isLoadingBackground,

    @Default(true) bool? isUserNameFree,

    @Default(null) ImageUploadModel? imageAvatarUploadModel,
    @Default(null) ImageUploadModel? imageBackgroundUploadModel,
    @Default(null) int? imageBackgroundId,
    @Default(null) int? imageAvatarId,
  }) = _EditProfileState;

}

