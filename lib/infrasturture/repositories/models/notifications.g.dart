// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IndividualNotification> _$individualNotificationSerializer =
    new _$IndividualNotificationSerializer();
Serializer<Notifications> _$notificationsSerializer =
    new _$NotificationsSerializer();
Serializer<NotificationsInBox> _$notificationsInBoxSerializer =
    new _$NotificationsInBoxSerializer();
Serializer<IndividualNotificationInBox>
    _$individualNotificationInBoxSerializer =
    new _$IndividualNotificationInBoxSerializer();
Serializer<SetNotifications> _$setNotificationsSerializer =
    new _$SetNotificationsSerializer();

class _$IndividualNotificationSerializer
    implements StructuredSerializer<IndividualNotification> {
  @override
  final Iterable<Type> types = const [
    IndividualNotification,
    _$IndividualNotification
  ];
  @override
  final String wireName = 'IndividualNotification';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, IndividualNotification object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'is_show',
      serializers.serialize(object.isRead, specifiedType: const FullType(bool)),
      'notification_type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'created_date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('answerer_avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.answererId;
    if (value != null) {
      result
        ..add('answerer_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.fullName;
    if (value != null) {
      result
        ..add('full_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.objectId;
    if (value != null) {
      result
        ..add('object_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  IndividualNotification deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IndividualNotificationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'answerer_avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'answerer_id':
          result.answererId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'full_name':
          result.fullName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_show':
          result.isRead = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'object_id':
          result.objectId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'notification_type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationsSerializer implements StructuredSerializer<Notifications> {
  @override
  final Iterable<Type> types = const [Notifications, _$Notifications];
  @override
  final String wireName = 'Notifications';

  @override
  Iterable<Object?> serialize(Serializers serializers, Notifications object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(IndividualNotification)])));
    }
    return result;
  }

  @override
  Notifications deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(IndividualNotification)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationsInBoxSerializer
    implements StructuredSerializer<NotificationsInBox> {
  @override
  final Iterable<Type> types = const [NotificationsInBox, _$NotificationsInBox];
  @override
  final String wireName = 'NotificationsInBox';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationsInBox object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType(IndividualNotificationInBox)])));
    }
    return result;
  }

  @override
  NotificationsInBox deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationsInBoxBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(IndividualNotificationInBox)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$IndividualNotificationInBoxSerializer
    implements StructuredSerializer<IndividualNotificationInBox> {
  @override
  final Iterable<Type> types = const [
    IndividualNotificationInBox,
    _$IndividualNotificationInBox
  ];
  @override
  final String wireName = 'IndividualNotificationInBox';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, IndividualNotificationInBox object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'question_owner_id',
      serializers.serialize(object.questionerId,
          specifiedType: const FullType(int)),
      'question_id',
      serializers.serialize(object.questionId,
          specifiedType: const FullType(int)),
      'created_date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('question_owner')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  IndividualNotificationInBox deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IndividualNotificationInBoxBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'question_owner':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'question_owner_id':
          result.questionerId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'question_id':
          result.questionId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SetNotificationsSerializer
    implements StructuredSerializer<SetNotifications> {
  @override
  final Iterable<Type> types = const [SetNotifications, _$SetNotifications];
  @override
  final String wireName = 'SetNotifications';

  @override
  Iterable<Object?> serialize(Serializers serializers, SetNotifications object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'pause_all',
      serializers.serialize(object.pauseAll,
          specifiedType: const FullType(bool)),
      'direct_questions',
      serializers.serialize(object.directQuestions,
          specifiedType: const FullType(bool)),
      'questions_answers',
      serializers.serialize(object.questionsAnswers,
          specifiedType: const FullType(bool)),
      'following_followers',
      serializers.serialize(object.followingFollowers,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  SetNotifications deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SetNotificationsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pause_all':
          result.pauseAll = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'direct_questions':
          result.directQuestions = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'questions_answers':
          result.questionsAnswers = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'following_followers':
          result.followingFollowers = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$IndividualNotification extends IndividualNotification {
  @override
  final int id;
  @override
  final String? title;
  @override
  final String? text;
  @override
  final String? avatar;
  @override
  final int? answererId;
  @override
  final String? fullName;
  @override
  final bool isRead;
  @override
  final int? objectId;
  @override
  final String type;
  @override
  final String date;

  factory _$IndividualNotification(
          [void Function(IndividualNotificationBuilder)? updates]) =>
      (new IndividualNotificationBuilder()..update(updates)).build();

  _$IndividualNotification._(
      {required this.id,
      this.title,
      this.text,
      this.avatar,
      this.answererId,
      this.fullName,
      required this.isRead,
      this.objectId,
      required this.type,
      required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'IndividualNotification', 'id');
    BuiltValueNullFieldError.checkNotNull(
        isRead, 'IndividualNotification', 'isRead');
    BuiltValueNullFieldError.checkNotNull(
        type, 'IndividualNotification', 'type');
    BuiltValueNullFieldError.checkNotNull(
        date, 'IndividualNotification', 'date');
  }

  @override
  IndividualNotification rebuild(
          void Function(IndividualNotificationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndividualNotificationBuilder toBuilder() =>
      new IndividualNotificationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndividualNotification &&
        id == other.id &&
        title == other.title &&
        text == other.text &&
        avatar == other.avatar &&
        answererId == other.answererId &&
        fullName == other.fullName &&
        isRead == other.isRead &&
        objectId == other.objectId &&
        type == other.type &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, id.hashCode), title.hashCode),
                                    text.hashCode),
                                avatar.hashCode),
                            answererId.hashCode),
                        fullName.hashCode),
                    isRead.hashCode),
                objectId.hashCode),
            type.hashCode),
        date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IndividualNotification')
          ..add('id', id)
          ..add('title', title)
          ..add('text', text)
          ..add('avatar', avatar)
          ..add('answererId', answererId)
          ..add('fullName', fullName)
          ..add('isRead', isRead)
          ..add('objectId', objectId)
          ..add('type', type)
          ..add('date', date))
        .toString();
  }
}

class IndividualNotificationBuilder
    implements Builder<IndividualNotification, IndividualNotificationBuilder> {
  _$IndividualNotification? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  int? _answererId;
  int? get answererId => _$this._answererId;
  set answererId(int? answererId) => _$this._answererId = answererId;

  String? _fullName;
  String? get fullName => _$this._fullName;
  set fullName(String? fullName) => _$this._fullName = fullName;

  bool? _isRead;
  bool? get isRead => _$this._isRead;
  set isRead(bool? isRead) => _$this._isRead = isRead;

  int? _objectId;
  int? get objectId => _$this._objectId;
  set objectId(int? objectId) => _$this._objectId = objectId;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  IndividualNotificationBuilder();

  IndividualNotificationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _text = $v.text;
      _avatar = $v.avatar;
      _answererId = $v.answererId;
      _fullName = $v.fullName;
      _isRead = $v.isRead;
      _objectId = $v.objectId;
      _type = $v.type;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndividualNotification other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IndividualNotification;
  }

  @override
  void update(void Function(IndividualNotificationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IndividualNotification build() {
    final _$result = _$v ??
        new _$IndividualNotification._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'IndividualNotification', 'id'),
            title: title,
            text: text,
            avatar: avatar,
            answererId: answererId,
            fullName: fullName,
            isRead: BuiltValueNullFieldError.checkNotNull(
                isRead, 'IndividualNotification', 'isRead'),
            objectId: objectId,
            type: BuiltValueNullFieldError.checkNotNull(
                type, 'IndividualNotification', 'type'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, 'IndividualNotification', 'date'));
    replace(_$result);
    return _$result;
  }
}

class _$Notifications extends Notifications {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<IndividualNotification>? results;

  factory _$Notifications([void Function(NotificationsBuilder)? updates]) =>
      (new NotificationsBuilder()..update(updates)).build();

  _$Notifications._(
      {required this.count, this.next, this.previous, this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(count, 'Notifications', 'count');
  }

  @override
  Notifications rebuild(void Function(NotificationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsBuilder toBuilder() => new NotificationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Notifications &&
        count == other.count &&
        next == other.next &&
        previous == other.previous &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, count.hashCode), next.hashCode), previous.hashCode),
        results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Notifications')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class NotificationsBuilder
    implements Builder<Notifications, NotificationsBuilder> {
  _$Notifications? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<IndividualNotification>? _results;
  ListBuilder<IndividualNotification> get results =>
      _$this._results ??= new ListBuilder<IndividualNotification>();
  set results(ListBuilder<IndividualNotification>? results) =>
      _$this._results = results;

  NotificationsBuilder();

  NotificationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _next = $v.next;
      _previous = $v.previous;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Notifications other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Notifications;
  }

  @override
  void update(void Function(NotificationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Notifications build() {
    _$Notifications _$result;
    try {
      _$result = _$v ??
          new _$Notifications._(
              count: BuiltValueNullFieldError.checkNotNull(
                  count, 'Notifications', 'count'),
              next: next,
              previous: previous,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Notifications', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NotificationsInBox extends NotificationsInBox {
  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  @override
  final BuiltList<IndividualNotificationInBox>? results;

  factory _$NotificationsInBox(
          [void Function(NotificationsInBoxBuilder)? updates]) =>
      (new NotificationsInBoxBuilder()..update(updates)).build();

  _$NotificationsInBox._(
      {required this.count, this.next, this.previous, this.results})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(count, 'NotificationsInBox', 'count');
  }

  @override
  NotificationsInBox rebuild(
          void Function(NotificationsInBoxBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationsInBoxBuilder toBuilder() =>
      new NotificationsInBoxBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationsInBox &&
        count == other.count &&
        next == other.next &&
        previous == other.previous &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, count.hashCode), next.hashCode), previous.hashCode),
        results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationsInBox')
          ..add('count', count)
          ..add('next', next)
          ..add('previous', previous)
          ..add('results', results))
        .toString();
  }
}

class NotificationsInBoxBuilder
    implements Builder<NotificationsInBox, NotificationsInBoxBuilder> {
  _$NotificationsInBox? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  ListBuilder<IndividualNotificationInBox>? _results;
  ListBuilder<IndividualNotificationInBox> get results =>
      _$this._results ??= new ListBuilder<IndividualNotificationInBox>();
  set results(ListBuilder<IndividualNotificationInBox>? results) =>
      _$this._results = results;

  NotificationsInBoxBuilder();

  NotificationsInBoxBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _next = $v.next;
      _previous = $v.previous;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationsInBox other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationsInBox;
  }

  @override
  void update(void Function(NotificationsInBoxBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationsInBox build() {
    _$NotificationsInBox _$result;
    try {
      _$result = _$v ??
          new _$NotificationsInBox._(
              count: BuiltValueNullFieldError.checkNotNull(
                  count, 'NotificationsInBox', 'count'),
              next: next,
              previous: previous,
              results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NotificationsInBox', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$IndividualNotificationInBox extends IndividualNotificationInBox {
  @override
  final int id;
  @override
  final String? title;
  @override
  final String? text;
  @override
  final String? avatar;
  @override
  final int questionerId;
  @override
  final int questionId;
  @override
  final String date;

  factory _$IndividualNotificationInBox(
          [void Function(IndividualNotificationInBoxBuilder)? updates]) =>
      (new IndividualNotificationInBoxBuilder()..update(updates)).build();

  _$IndividualNotificationInBox._(
      {required this.id,
      this.title,
      this.text,
      this.avatar,
      required this.questionerId,
      required this.questionId,
      required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, 'IndividualNotificationInBox', 'id');
    BuiltValueNullFieldError.checkNotNull(
        questionerId, 'IndividualNotificationInBox', 'questionerId');
    BuiltValueNullFieldError.checkNotNull(
        questionId, 'IndividualNotificationInBox', 'questionId');
    BuiltValueNullFieldError.checkNotNull(
        date, 'IndividualNotificationInBox', 'date');
  }

  @override
  IndividualNotificationInBox rebuild(
          void Function(IndividualNotificationInBoxBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IndividualNotificationInBoxBuilder toBuilder() =>
      new IndividualNotificationInBoxBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IndividualNotificationInBox &&
        id == other.id &&
        title == other.title &&
        text == other.text &&
        avatar == other.avatar &&
        questionerId == other.questionerId &&
        questionId == other.questionId &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), title.hashCode),
                        text.hashCode),
                    avatar.hashCode),
                questionerId.hashCode),
            questionId.hashCode),
        date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('IndividualNotificationInBox')
          ..add('id', id)
          ..add('title', title)
          ..add('text', text)
          ..add('avatar', avatar)
          ..add('questionerId', questionerId)
          ..add('questionId', questionId)
          ..add('date', date))
        .toString();
  }
}

class IndividualNotificationInBoxBuilder
    implements
        Builder<IndividualNotificationInBox,
            IndividualNotificationInBoxBuilder> {
  _$IndividualNotificationInBox? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  int? _questionerId;
  int? get questionerId => _$this._questionerId;
  set questionerId(int? questionerId) => _$this._questionerId = questionerId;

  int? _questionId;
  int? get questionId => _$this._questionId;
  set questionId(int? questionId) => _$this._questionId = questionId;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  IndividualNotificationInBoxBuilder();

  IndividualNotificationInBoxBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _text = $v.text;
      _avatar = $v.avatar;
      _questionerId = $v.questionerId;
      _questionId = $v.questionId;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IndividualNotificationInBox other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IndividualNotificationInBox;
  }

  @override
  void update(void Function(IndividualNotificationInBoxBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$IndividualNotificationInBox build() {
    final _$result = _$v ??
        new _$IndividualNotificationInBox._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'IndividualNotificationInBox', 'id'),
            title: title,
            text: text,
            avatar: avatar,
            questionerId: BuiltValueNullFieldError.checkNotNull(
                questionerId, 'IndividualNotificationInBox', 'questionerId'),
            questionId: BuiltValueNullFieldError.checkNotNull(
                questionId, 'IndividualNotificationInBox', 'questionId'),
            date: BuiltValueNullFieldError.checkNotNull(
                date, 'IndividualNotificationInBox', 'date'));
    replace(_$result);
    return _$result;
  }
}

class _$SetNotifications extends SetNotifications {
  @override
  final bool pauseAll;
  @override
  final bool directQuestions;
  @override
  final bool questionsAnswers;
  @override
  final bool followingFollowers;

  factory _$SetNotifications(
          [void Function(SetNotificationsBuilder)? updates]) =>
      (new SetNotificationsBuilder()..update(updates)).build();

  _$SetNotifications._(
      {required this.pauseAll,
      required this.directQuestions,
      required this.questionsAnswers,
      required this.followingFollowers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        pauseAll, 'SetNotifications', 'pauseAll');
    BuiltValueNullFieldError.checkNotNull(
        directQuestions, 'SetNotifications', 'directQuestions');
    BuiltValueNullFieldError.checkNotNull(
        questionsAnswers, 'SetNotifications', 'questionsAnswers');
    BuiltValueNullFieldError.checkNotNull(
        followingFollowers, 'SetNotifications', 'followingFollowers');
  }

  @override
  SetNotifications rebuild(void Function(SetNotificationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetNotificationsBuilder toBuilder() =>
      new SetNotificationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetNotifications &&
        pauseAll == other.pauseAll &&
        directQuestions == other.directQuestions &&
        questionsAnswers == other.questionsAnswers &&
        followingFollowers == other.followingFollowers;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, pauseAll.hashCode), directQuestions.hashCode),
            questionsAnswers.hashCode),
        followingFollowers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetNotifications')
          ..add('pauseAll', pauseAll)
          ..add('directQuestions', directQuestions)
          ..add('questionsAnswers', questionsAnswers)
          ..add('followingFollowers', followingFollowers))
        .toString();
  }
}

class SetNotificationsBuilder
    implements Builder<SetNotifications, SetNotificationsBuilder> {
  _$SetNotifications? _$v;

  bool? _pauseAll;
  bool? get pauseAll => _$this._pauseAll;
  set pauseAll(bool? pauseAll) => _$this._pauseAll = pauseAll;

  bool? _directQuestions;
  bool? get directQuestions => _$this._directQuestions;
  set directQuestions(bool? directQuestions) =>
      _$this._directQuestions = directQuestions;

  bool? _questionsAnswers;
  bool? get questionsAnswers => _$this._questionsAnswers;
  set questionsAnswers(bool? questionsAnswers) =>
      _$this._questionsAnswers = questionsAnswers;

  bool? _followingFollowers;
  bool? get followingFollowers => _$this._followingFollowers;
  set followingFollowers(bool? followingFollowers) =>
      _$this._followingFollowers = followingFollowers;

  SetNotificationsBuilder();

  SetNotificationsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pauseAll = $v.pauseAll;
      _directQuestions = $v.directQuestions;
      _questionsAnswers = $v.questionsAnswers;
      _followingFollowers = $v.followingFollowers;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetNotifications other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetNotifications;
  }

  @override
  void update(void Function(SetNotificationsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetNotifications build() {
    final _$result = _$v ??
        new _$SetNotifications._(
            pauseAll: BuiltValueNullFieldError.checkNotNull(
                pauseAll, 'SetNotifications', 'pauseAll'),
            directQuestions: BuiltValueNullFieldError.checkNotNull(
                directQuestions, 'SetNotifications', 'directQuestions'),
            questionsAnswers: BuiltValueNullFieldError.checkNotNull(
                questionsAnswers, 'SetNotifications', 'questionsAnswers'),
            followingFollowers: BuiltValueNullFieldError.checkNotNull(
                followingFollowers, 'SetNotifications', 'followingFollowers'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
