import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
part 'notification_model.g.dart';

abstract class NotificationModel implements Built<NotificationModel, NotificationModelBuilder> {
  int? get count;
  BuiltList<NotificationResults?>? get results;

  NotificationModel._();
  factory NotificationModel([Function(NotificationModelBuilder b) updates]) = _$NotificationModel;

  static Serializer<NotificationModel> get serializer => _$notificationModelSerializer;
}

abstract class NotificationResults implements Built<NotificationResults, NotificationResultsBuilder> {
  String? get uuid;
  String? get text;
  String? get title;

  @BuiltValueField(wireName: 'object_id')
  String?  get objectId;

  @BuiltValueField(wireName: 'object_model')
  String? get objectModel;

  @BuiltValueField(wireName: 'created_datetime')
  String?  get createdDatetime;

  @BuiltValueField(wireName: 'is_show')
  bool?  get isShow;

  @BuiltValueField(wireName: 'is_accepted')
  bool? get isAccepted;

  @BuiltValueField(wireName: 'from_user')
  NotificationAvatar? get fromUser;

  NotificationResults._();
  factory NotificationResults([Function(NotificationResultsBuilder b) updates]) = _$NotificationResults;

  static Serializer<NotificationResults> get serializer => _$notificationResultsSerializer;
}
abstract class NotificationAvatar implements Built<NotificationAvatar, NotificationAvatarBuilder> {
  int? get id;
  String? get  username;
  String? get  avatar;

  NotificationAvatar._();
  factory NotificationAvatar([Function(NotificationAvatarBuilder b) updates]) = _$NotificationAvatar;

  static Serializer<NotificationAvatar> get serializer => _$notificationAvatarSerializer;
}