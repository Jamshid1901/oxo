// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_setting.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationSetting> _$notificationSettingSerializer =
    new _$NotificationSettingSerializer();

class _$NotificationSettingSerializer
    implements StructuredSerializer<NotificationSetting> {
  @override
  final Iterable<Type> types = const [
    NotificationSetting,
    _$NotificationSetting
  ];
  @override
  final String wireName = 'NotificationSetting';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationSetting object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.newEventsFollowed;
    if (value != null) {
      result
        ..add('new_events_followed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.newMessages;
    if (value != null) {
      result
        ..add('new_messages')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.nearbyEvents;
    if (value != null) {
      result
        ..add('nearby_events')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.newFollowers;
    if (value != null) {
      result
        ..add('new_followers')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.teamMembersApply;
    if (value != null) {
      result
        ..add('team_members_apply')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.teamReviews;
    if (value != null) {
      result
        ..add('team_reviews')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.teamComments;
    if (value != null) {
      result
        ..add('team_comments')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.teamNewFollowers;
    if (value != null) {
      result
        ..add('team_new_followers')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  NotificationSetting deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationSettingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'new_events_followed':
          result.newEventsFollowed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'new_messages':
          result.newMessages = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'nearby_events':
          result.nearbyEvents = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'new_followers':
          result.newFollowers = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'team_members_apply':
          result.teamMembersApply = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'team_reviews':
          result.teamReviews = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'team_comments':
          result.teamComments = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'team_new_followers':
          result.teamNewFollowers = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationSetting extends NotificationSetting {
  @override
  final bool? newEventsFollowed;
  @override
  final bool? newMessages;
  @override
  final bool? nearbyEvents;
  @override
  final bool? newFollowers;
  @override
  final bool? teamMembersApply;
  @override
  final bool? teamReviews;
  @override
  final bool? teamComments;
  @override
  final bool? teamNewFollowers;

  factory _$NotificationSetting(
          [void Function(NotificationSettingBuilder)? updates]) =>
      (new NotificationSettingBuilder()..update(updates)).build();

  _$NotificationSetting._(
      {this.newEventsFollowed,
      this.newMessages,
      this.nearbyEvents,
      this.newFollowers,
      this.teamMembersApply,
      this.teamReviews,
      this.teamComments,
      this.teamNewFollowers})
      : super._();

  @override
  NotificationSetting rebuild(
          void Function(NotificationSettingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationSettingBuilder toBuilder() =>
      new NotificationSettingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationSetting &&
        newEventsFollowed == other.newEventsFollowed &&
        newMessages == other.newMessages &&
        nearbyEvents == other.nearbyEvents &&
        newFollowers == other.newFollowers &&
        teamMembersApply == other.teamMembersApply &&
        teamReviews == other.teamReviews &&
        teamComments == other.teamComments &&
        teamNewFollowers == other.teamNewFollowers;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, newEventsFollowed.hashCode),
                                newMessages.hashCode),
                            nearbyEvents.hashCode),
                        newFollowers.hashCode),
                    teamMembersApply.hashCode),
                teamReviews.hashCode),
            teamComments.hashCode),
        teamNewFollowers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationSetting')
          ..add('newEventsFollowed', newEventsFollowed)
          ..add('newMessages', newMessages)
          ..add('nearbyEvents', nearbyEvents)
          ..add('newFollowers', newFollowers)
          ..add('teamMembersApply', teamMembersApply)
          ..add('teamReviews', teamReviews)
          ..add('teamComments', teamComments)
          ..add('teamNewFollowers', teamNewFollowers))
        .toString();
  }
}

class NotificationSettingBuilder
    implements Builder<NotificationSetting, NotificationSettingBuilder> {
  _$NotificationSetting? _$v;

  bool? _newEventsFollowed;
  bool? get newEventsFollowed => _$this._newEventsFollowed;
  set newEventsFollowed(bool? newEventsFollowed) =>
      _$this._newEventsFollowed = newEventsFollowed;

  bool? _newMessages;
  bool? get newMessages => _$this._newMessages;
  set newMessages(bool? newMessages) => _$this._newMessages = newMessages;

  bool? _nearbyEvents;
  bool? get nearbyEvents => _$this._nearbyEvents;
  set nearbyEvents(bool? nearbyEvents) => _$this._nearbyEvents = nearbyEvents;

  bool? _newFollowers;
  bool? get newFollowers => _$this._newFollowers;
  set newFollowers(bool? newFollowers) => _$this._newFollowers = newFollowers;

  bool? _teamMembersApply;
  bool? get teamMembersApply => _$this._teamMembersApply;
  set teamMembersApply(bool? teamMembersApply) =>
      _$this._teamMembersApply = teamMembersApply;

  bool? _teamReviews;
  bool? get teamReviews => _$this._teamReviews;
  set teamReviews(bool? teamReviews) => _$this._teamReviews = teamReviews;

  bool? _teamComments;
  bool? get teamComments => _$this._teamComments;
  set teamComments(bool? teamComments) => _$this._teamComments = teamComments;

  bool? _teamNewFollowers;
  bool? get teamNewFollowers => _$this._teamNewFollowers;
  set teamNewFollowers(bool? teamNewFollowers) =>
      _$this._teamNewFollowers = teamNewFollowers;

  NotificationSettingBuilder();

  NotificationSettingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newEventsFollowed = $v.newEventsFollowed;
      _newMessages = $v.newMessages;
      _nearbyEvents = $v.nearbyEvents;
      _newFollowers = $v.newFollowers;
      _teamMembersApply = $v.teamMembersApply;
      _teamReviews = $v.teamReviews;
      _teamComments = $v.teamComments;
      _teamNewFollowers = $v.teamNewFollowers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationSetting other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationSetting;
  }

  @override
  void update(void Function(NotificationSettingBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationSetting build() {
    final _$result = _$v ??
        new _$NotificationSetting._(
            newEventsFollowed: newEventsFollowed,
            newMessages: newMessages,
            nearbyEvents: nearbyEvents,
            newFollowers: newFollowers,
            teamMembersApply: teamMembersApply,
            teamReviews: teamReviews,
            teamComments: teamComments,
            teamNewFollowers: teamNewFollowers);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
