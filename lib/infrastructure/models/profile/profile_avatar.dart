


import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'profile_avatar.g.dart';

abstract class ProfileAvatarModel implements Built<ProfileAvatarModel, ProfileAvatarModelBuilder>{

  int? get id;
  String?  get  file;

  ProfileAvatarModel._();

  factory ProfileAvatarModel([Function(ProfileAvatarModelBuilder b) updates]) = _$ProfileAvatarModel;

  static Serializer<ProfileAvatarModel> get serializer => _$profileAvatarModelSerializer;


}