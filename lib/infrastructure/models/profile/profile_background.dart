


import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'profile_background.g.dart';

abstract class ProfileBackgroundModel implements Built<ProfileBackgroundModel, ProfileBackgroundModelBuilder>{

  int? get id;
  String?  get  file;

  ProfileBackgroundModel._();

  factory ProfileBackgroundModel([Function(ProfileBackgroundModelBuilder b) updates]) = _$ProfileBackgroundModel;

  static Serializer<ProfileBackgroundModel> get serializer => _$profileBackgroundModelSerializer;


}