import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
part 'followers_model.g.dart';

abstract class FollowersModel implements Built<FollowersModel, FollowersModelBuilder> {
  int? get count;
  BuiltList<Results?>? get results;

  FollowersModel._();
  factory FollowersModel([Function(FollowersModelBuilder b) updates]) = _$FollowersModel;

  static Serializer<FollowersModel> get serializer => _$followersModelSerializer;
}

abstract class Results implements Built<Results, ResultsBuilder> {
  int? get id;
  String? get username;
  // String? get bio;
  // String? get link;
  @BuiltValueField(wireName: 'is_himself')
  bool?  get isHimself;

  @BuiltValueField(wireName: 'is_verified')
  bool? get isVerified;
  @BuiltValueField(wireName: 'type_user')
  String? get typeUser;
  bool? get follow;
  Avatar? get avatar;

  Results._();
  factory Results([Function(ResultsBuilder b) updates]) = _$Results;

  static Serializer<Results> get serializer => _$resultsSerializer;
}
abstract class Avatar implements Built<Avatar, AvatarBuilder> {
  int? get id;
  String? get  file;
  String? get  format;
  String? get  name;

  Avatar._();
  factory Avatar([Function(AvatarBuilder b) updates]) = _$Avatar;

  static Serializer<Avatar> get serializer => _$avatarSerializer;
}

abstract class UnFollowPostModel
    implements Built<UnFollowPostModel, UnFollowPostModelBuilder> {
  @BuiltValueField(wireName: 'following_user')
  int? get followingUser;

  UnFollowPostModel._();
  factory UnFollowPostModel([Function(UnFollowPostModelBuilder b) updates]) =
  _$UnFollowPostModel;

  static Serializer<UnFollowPostModel> get serializer =>
      _$unFollowPostModelSerializer;
}
