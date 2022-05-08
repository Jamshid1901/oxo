part of 'edit_profile_bloc.dart';

@freezed
abstract class EditProfileEvent with _$EditProfileEvent {

  const factory EditProfileEvent.uploadAvatarPhoto( ) = _UploadAvatarPhoto;

  const factory EditProfileEvent.uploadBackgroundPhoto( ) = _UploadBackgroundPhoto;

  const factory EditProfileEvent.editProfilePut({ required ProfileM editPModel}) = _EditProfilePut;

  const factory EditProfileEvent.checkUserName({ required UserNameM userName}) = _CheckUserName;

}
