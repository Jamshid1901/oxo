import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'notifications.g.dart';

abstract class IndividualNotification
    implements Built<IndividualNotification, IndividualNotificationBuilder> {
  int get id;

  String? get title;

  String? get text;

  @BuiltValueField(wireName: 'answerer_avatar')
  String? get avatar;


  @BuiltValueField(wireName: 'answerer_id')
  int? get answererId;

  @BuiltValueField(wireName: 'full_name')
  String? get fullName;

  @BuiltValueField(wireName: 'is_show')
  bool get isRead;

  @BuiltValueField(wireName: 'object_id')
  int? get objectId;

  @BuiltValueField(wireName: 'notification_type')
  String get type;

  @BuiltValueField(wireName: 'created_date')
  String get date;

  IndividualNotification._();
  factory IndividualNotification(
          [Function(IndividualNotificationBuilder b) updates]) =
      _$IndividualNotification;

  static Serializer<IndividualNotification> get serializer =>
      _$individualNotificationSerializer;
}

abstract class Notifications
    implements Built<Notifications, NotificationsBuilder> {
  int get count;

  String? get next;

  String? get previous;

  BuiltList<IndividualNotification>? get results;

  Notifications._();
  factory Notifications([Function(NotificationsBuilder b) updates]) =
      _$Notifications;

  static Serializer<Notifications> get serializer => _$notificationsSerializer;
}

abstract class NotificationsInBox
    implements Built<NotificationsInBox, NotificationsInBoxBuilder> {
  int get count;

  String? get next;

  String? get previous;

  BuiltList<IndividualNotificationInBox>? get results;

  NotificationsInBox._();
  factory NotificationsInBox([Function(NotificationsInBoxBuilder b) updates]) =
  _$NotificationsInBox;

  static Serializer<NotificationsInBox> get serializer => _$notificationsInBoxSerializer;
}


abstract class IndividualNotificationInBox
    implements Built<IndividualNotificationInBox, IndividualNotificationInBoxBuilder> {
  int get id;

  String? get title;

  String? get text;

  @BuiltValueField(wireName: 'question_owner')
  String? get avatar;

  @BuiltValueField(wireName: 'question_owner_id')
  int get questionerId;


  @BuiltValueField(wireName: 'question_id')
  int get questionId;

  @BuiltValueField(wireName: 'created_date')
  String get date;

  IndividualNotificationInBox._();
  factory IndividualNotificationInBox(
      [Function(IndividualNotificationInBoxBuilder b) updates]) =
  _$IndividualNotificationInBox;

  static Serializer<IndividualNotificationInBox> get serializer =>
      _$individualNotificationInBoxSerializer;
}

abstract class SetNotifications
    implements Built<SetNotifications, SetNotificationsBuilder> {
  @BuiltValueField(wireName: 'pause_all')
  bool get pauseAll;

  @BuiltValueField(wireName: 'direct_questions')
  bool get directQuestions;

  @BuiltValueField(wireName: 'questions_answers')
  bool get questionsAnswers;

  @BuiltValueField(wireName: 'following_followers')
  bool get followingFollowers;


  SetNotifications._();
  factory SetNotifications([Function(SetNotificationsBuilder b) updates]) =
  _$SetNotifications;

  static Serializer<SetNotifications> get serializer => _$setNotificationsSerializer;
}
