


import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:oxo/infrastructure/models/profile/profile_avatar.dart';
import 'package:oxo/infrastructure/models/profile/profile_background.dart';

part 'profile.g.dart';


abstract class ProfileModel implements Built<ProfileModel, ProfileModelBuilder>{

  int get id;

  @BuiltValueField(wireName: 'username')
  String?  get  userName;

  String? get  bio;
  String? get  link;

  @BuiltValueField(wireName: 'is_verified')
  bool? get  isVerified;

  bool? get  follow;

  @BuiltValueField(wireName: 'type_user')
  String?  get typeUser;

  @BuiltValueField(wireName: 'company_name')
  String?  get companyName;

  @BuiltValueField(wireName: 'company_phone')
  String?  get companyPhone;

  @BuiltValueField(wireName: 'company_ein')
  String?  get companyEin;

  @BuiltValueField(wireName: 'is_himself')
  bool?  get isHimself;

  @BuiltValueField(wireName: 'follower_count')
  int? get  followerCount;

  @BuiltValueField(wireName: 'friends_count')
  int?  get friendsCount;

  @BuiltValueField(wireName: 'hosted')
  int? get  hostedCount ;

  @BuiltValueField(wireName: 'avatar')
  ProfileAvatarModel? get profileAvatarModel;

  @BuiltValueField(wireName: 'background_photo')
  ProfileBackgroundModel? get profileBackgroundModel;

  ProfileModel._();

  factory ProfileModel([Function(ProfileModelBuilder b) updates]) = _$ProfileModel;

  static Serializer<ProfileModel> get serializer => _$profileModelSerializer;


}