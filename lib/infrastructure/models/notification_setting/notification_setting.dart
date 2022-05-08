import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'notification_setting.g.dart';

abstract class NotificationSetting implements Built<NotificationSetting, NotificationSettingBuilder> {

  @BuiltValueField(wireName: 'new_events_followed')
  bool? get newEventsFollowed;

  @BuiltValueField(wireName: 'new_messages')
  bool? get newMessages;

  @BuiltValueField(wireName: 'nearby_events')
  bool? get nearbyEvents;

  @BuiltValueField(wireName: 'new_followers')
  bool? get newFollowers;

  @BuiltValueField(wireName: 'team_members_apply')
  bool? get teamMembersApply;

  @BuiltValueField(wireName: 'team_reviews')
  bool? get teamReviews;

  @BuiltValueField(wireName: 'team_comments')
  bool? get teamComments;

  @BuiltValueField(wireName: 'team_new_followers')
  bool? get teamNewFollowers;

  NotificationSetting._();
  factory NotificationSetting([Function(NotificationSettingBuilder b) updates]) = _$NotificationSetting;

  static Serializer<NotificationSetting> get serializer => _$notificationSettingSerializer;
}