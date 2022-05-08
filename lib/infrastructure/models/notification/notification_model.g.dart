// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotificationModel> _$notificationModelSerializer =
    new _$NotificationModelSerializer();
Serializer<NotificationResults> _$notificationResultsSerializer =
    new _$NotificationResultsSerializer();
Serializer<NotificationAvatar> _$notificationAvatarSerializer =
    new _$NotificationAvatarSerializer();

class _$NotificationModelSerializer
    implements StructuredSerializer<NotificationModel> {
  @override
  final Iterable<Type> types = const [NotificationModel, _$NotificationModel];
  @override
  final String wireName = 'NotificationModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, NotificationModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList,
                const [const FullType.nullable(NotificationResults)])));
    }
    return result;
  }

  @override
  NotificationModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType.nullable(NotificationResults)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationResultsSerializer
    implements StructuredSerializer<NotificationResults> {
  @override
  final Iterable<Type> types = const [
    NotificationResults,
    _$NotificationResults
  ];
  @override
  final String wireName = 'NotificationResults';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationResults object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uuid;
    if (value != null) {
      result
        ..add('uuid')
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
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.objectId;
    if (value != null) {
      result
        ..add('object_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.objectModel;
    if (value != null) {
      result
        ..add('object_model')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdDatetime;
    if (value != null) {
      result
        ..add('created_datetime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isShow;
    if (value != null) {
      result
        ..add('is_show')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isAccepted;
    if (value != null) {
      result
        ..add('is_accepted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.fromUser;
    if (value != null) {
      result
        ..add('from_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(NotificationAvatar)));
    }
    return result;
  }

  @override
  NotificationResults deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationResultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uuid':
          result.uuid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'object_id':
          result.objectId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'object_model':
          result.objectModel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_datetime':
          result.createdDatetime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_show':
          result.isShow = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_accepted':
          result.isAccepted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'from_user':
          result.fromUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(NotificationAvatar))!
              as NotificationAvatar);
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationAvatarSerializer
    implements StructuredSerializer<NotificationAvatar> {
  @override
  final Iterable<Type> types = const [NotificationAvatar, _$NotificationAvatar];
  @override
  final String wireName = 'NotificationAvatar';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, NotificationAvatar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.username;
    if (value != null) {
      result
        ..add('username')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  NotificationAvatar deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotificationAvatarBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'avatar':
          result.avatar = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$NotificationModel extends NotificationModel {
  @override
  final int? count;
  @override
  final BuiltList<NotificationResults?>? results;

  factory _$NotificationModel(
          [void Function(NotificationModelBuilder)? updates]) =>
      (new NotificationModelBuilder()..update(updates)).build();

  _$NotificationModel._({this.count, this.results}) : super._();

  @override
  NotificationModel rebuild(void Function(NotificationModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationModelBuilder toBuilder() =>
      new NotificationModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationModel &&
        count == other.count &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, count.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationModel')
          ..add('count', count)
          ..add('results', results))
        .toString();
  }
}

class NotificationModelBuilder
    implements Builder<NotificationModel, NotificationModelBuilder> {
  _$NotificationModel? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<NotificationResults?>? _results;
  ListBuilder<NotificationResults?> get results =>
      _$this._results ??= new ListBuilder<NotificationResults?>();
  set results(ListBuilder<NotificationResults?>? results) =>
      _$this._results = results;

  NotificationModelBuilder();

  NotificationModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationModel;
  }

  @override
  void update(void Function(NotificationModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationModel build() {
    _$NotificationModel _$result;
    try {
      _$result = _$v ??
          new _$NotificationModel._(count: count, results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NotificationModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NotificationResults extends NotificationResults {
  @override
  final String? uuid;
  @override
  final String? text;
  @override
  final String? title;
  @override
  final String? objectId;
  @override
  final String? objectModel;
  @override
  final String? createdDatetime;
  @override
  final bool? isShow;
  @override
  final bool? isAccepted;
  @override
  final NotificationAvatar? fromUser;

  factory _$NotificationResults(
          [void Function(NotificationResultsBuilder)? updates]) =>
      (new NotificationResultsBuilder()..update(updates)).build();

  _$NotificationResults._(
      {this.uuid,
      this.text,
      this.title,
      this.objectId,
      this.objectModel,
      this.createdDatetime,
      this.isShow,
      this.isAccepted,
      this.fromUser})
      : super._();

  @override
  NotificationResults rebuild(
          void Function(NotificationResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationResultsBuilder toBuilder() =>
      new NotificationResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationResults &&
        uuid == other.uuid &&
        text == other.text &&
        title == other.title &&
        objectId == other.objectId &&
        objectModel == other.objectModel &&
        createdDatetime == other.createdDatetime &&
        isShow == other.isShow &&
        isAccepted == other.isAccepted &&
        fromUser == other.fromUser;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, uuid.hashCode), text.hashCode),
                                title.hashCode),
                            objectId.hashCode),
                        objectModel.hashCode),
                    createdDatetime.hashCode),
                isShow.hashCode),
            isAccepted.hashCode),
        fromUser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationResults')
          ..add('uuid', uuid)
          ..add('text', text)
          ..add('title', title)
          ..add('objectId', objectId)
          ..add('objectModel', objectModel)
          ..add('createdDatetime', createdDatetime)
          ..add('isShow', isShow)
          ..add('isAccepted', isAccepted)
          ..add('fromUser', fromUser))
        .toString();
  }
}

class NotificationResultsBuilder
    implements Builder<NotificationResults, NotificationResultsBuilder> {
  _$NotificationResults? _$v;

  String? _uuid;
  String? get uuid => _$this._uuid;
  set uuid(String? uuid) => _$this._uuid = uuid;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _objectId;
  String? get objectId => _$this._objectId;
  set objectId(String? objectId) => _$this._objectId = objectId;

  String? _objectModel;
  String? get objectModel => _$this._objectModel;
  set objectModel(String? objectModel) => _$this._objectModel = objectModel;

  String? _createdDatetime;
  String? get createdDatetime => _$this._createdDatetime;
  set createdDatetime(String? createdDatetime) =>
      _$this._createdDatetime = createdDatetime;

  bool? _isShow;
  bool? get isShow => _$this._isShow;
  set isShow(bool? isShow) => _$this._isShow = isShow;

  bool? _isAccepted;
  bool? get isAccepted => _$this._isAccepted;
  set isAccepted(bool? isAccepted) => _$this._isAccepted = isAccepted;

  NotificationAvatarBuilder? _fromUser;
  NotificationAvatarBuilder get fromUser =>
      _$this._fromUser ??= new NotificationAvatarBuilder();
  set fromUser(NotificationAvatarBuilder? fromUser) =>
      _$this._fromUser = fromUser;

  NotificationResultsBuilder();

  NotificationResultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uuid = $v.uuid;
      _text = $v.text;
      _title = $v.title;
      _objectId = $v.objectId;
      _objectModel = $v.objectModel;
      _createdDatetime = $v.createdDatetime;
      _isShow = $v.isShow;
      _isAccepted = $v.isAccepted;
      _fromUser = $v.fromUser?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationResults other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationResults;
  }

  @override
  void update(void Function(NotificationResultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationResults build() {
    _$NotificationResults _$result;
    try {
      _$result = _$v ??
          new _$NotificationResults._(
              uuid: uuid,
              text: text,
              title: title,
              objectId: objectId,
              objectModel: objectModel,
              createdDatetime: createdDatetime,
              isShow: isShow,
              isAccepted: isAccepted,
              fromUser: _fromUser?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fromUser';
        _fromUser?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NotificationResults', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NotificationAvatar extends NotificationAvatar {
  @override
  final int? id;
  @override
  final String? username;
  @override
  final String? avatar;

  factory _$NotificationAvatar(
          [void Function(NotificationAvatarBuilder)? updates]) =>
      (new NotificationAvatarBuilder()..update(updates)).build();

  _$NotificationAvatar._({this.id, this.username, this.avatar}) : super._();

  @override
  NotificationAvatar rebuild(
          void Function(NotificationAvatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotificationAvatarBuilder toBuilder() =>
      new NotificationAvatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotificationAvatar &&
        id == other.id &&
        username == other.username &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), username.hashCode), avatar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NotificationAvatar')
          ..add('id', id)
          ..add('username', username)
          ..add('avatar', avatar))
        .toString();
  }
}

class NotificationAvatarBuilder
    implements Builder<NotificationAvatar, NotificationAvatarBuilder> {
  _$NotificationAvatar? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _avatar;
  String? get avatar => _$this._avatar;
  set avatar(String? avatar) => _$this._avatar = avatar;

  NotificationAvatarBuilder();

  NotificationAvatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _username = $v.username;
      _avatar = $v.avatar;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotificationAvatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotificationAvatar;
  }

  @override
  void update(void Function(NotificationAvatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NotificationAvatar build() {
    final _$result = _$v ??
        new _$NotificationAvatar._(id: id, username: username, avatar: avatar);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
