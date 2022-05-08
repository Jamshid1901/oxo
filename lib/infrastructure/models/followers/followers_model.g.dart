// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'followers_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FollowersModel> _$followersModelSerializer =
    new _$FollowersModelSerializer();
Serializer<Results> _$resultsSerializer = new _$ResultsSerializer();
Serializer<Avatar> _$avatarSerializer = new _$AvatarSerializer();
Serializer<UnFollowPostModel> _$unFollowPostModelSerializer =
    new _$UnFollowPostModelSerializer();

class _$FollowersModelSerializer
    implements StructuredSerializer<FollowersModel> {
  @override
  final Iterable<Type> types = const [FollowersModel, _$FollowersModel];
  @override
  final String wireName = 'FollowersModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, FollowersModel object,
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
            specifiedType: const FullType(
                BuiltList, const [const FullType.nullable(Results)])));
    }
    return result;
  }

  @override
  FollowersModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FollowersModelBuilder();

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
                  specifiedType: const FullType(
                      BuiltList, const [const FullType.nullable(Results)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ResultsSerializer implements StructuredSerializer<Results> {
  @override
  final Iterable<Type> types = const [Results, _$Results];
  @override
  final String wireName = 'Results';

  @override
  Iterable<Object?> serialize(Serializers serializers, Results object,
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
    value = object.isHimself;
    if (value != null) {
      result
        ..add('is_himself')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isVerified;
    if (value != null) {
      result
        ..add('is_verified')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.typeUser;
    if (value != null) {
      result
        ..add('type_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.follow;
    if (value != null) {
      result
        ..add('follow')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.avatar;
    if (value != null) {
      result
        ..add('avatar')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Avatar)));
    }
    return result;
  }

  @override
  Results deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResultsBuilder();

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
        case 'is_himself':
          result.isHimself = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'is_verified':
          result.isVerified = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'type_user':
          result.typeUser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'follow':
          result.follow = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'avatar':
          result.avatar.replace(serializers.deserialize(value,
              specifiedType: const FullType(Avatar))! as Avatar);
          break;
      }
    }

    return result.build();
  }
}

class _$AvatarSerializer implements StructuredSerializer<Avatar> {
  @override
  final Iterable<Type> types = const [Avatar, _$Avatar];
  @override
  final String wireName = 'Avatar';

  @override
  Iterable<Object?> serialize(Serializers serializers, Avatar object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.file;
    if (value != null) {
      result
        ..add('file')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Avatar deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AvatarBuilder();

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
        case 'file':
          result.file = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'format':
          result.format = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UnFollowPostModelSerializer
    implements StructuredSerializer<UnFollowPostModel> {
  @override
  final Iterable<Type> types = const [UnFollowPostModel, _$UnFollowPostModel];
  @override
  final String wireName = 'UnFollowPostModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, UnFollowPostModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.followingUser;
    if (value != null) {
      result
        ..add('following_user')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  UnFollowPostModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UnFollowPostModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'following_user':
          result.followingUser = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$FollowersModel extends FollowersModel {
  @override
  final int? count;
  @override
  final BuiltList<Results?>? results;

  factory _$FollowersModel([void Function(FollowersModelBuilder)? updates]) =>
      (new FollowersModelBuilder()..update(updates)).build();

  _$FollowersModel._({this.count, this.results}) : super._();

  @override
  FollowersModel rebuild(void Function(FollowersModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FollowersModelBuilder toBuilder() =>
      new FollowersModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FollowersModel &&
        count == other.count &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, count.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FollowersModel')
          ..add('count', count)
          ..add('results', results))
        .toString();
  }
}

class FollowersModelBuilder
    implements Builder<FollowersModel, FollowersModelBuilder> {
  _$FollowersModel? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<Results?>? _results;
  ListBuilder<Results?> get results =>
      _$this._results ??= new ListBuilder<Results?>();
  set results(ListBuilder<Results?>? results) => _$this._results = results;

  FollowersModelBuilder();

  FollowersModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FollowersModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FollowersModel;
  }

  @override
  void update(void Function(FollowersModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FollowersModel build() {
    _$FollowersModel _$result;
    try {
      _$result = _$v ??
          new _$FollowersModel._(count: count, results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FollowersModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Results extends Results {
  @override
  final int? id;
  @override
  final String? username;
  @override
  final bool? isHimself;
  @override
  final bool? isVerified;
  @override
  final String? typeUser;
  @override
  final bool? follow;
  @override
  final Avatar? avatar;

  factory _$Results([void Function(ResultsBuilder)? updates]) =>
      (new ResultsBuilder()..update(updates)).build();

  _$Results._(
      {this.id,
      this.username,
      this.isHimself,
      this.isVerified,
      this.typeUser,
      this.follow,
      this.avatar})
      : super._();

  @override
  Results rebuild(void Function(ResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResultsBuilder toBuilder() => new ResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Results &&
        id == other.id &&
        username == other.username &&
        isHimself == other.isHimself &&
        isVerified == other.isVerified &&
        typeUser == other.typeUser &&
        follow == other.follow &&
        avatar == other.avatar;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), username.hashCode),
                        isHimself.hashCode),
                    isVerified.hashCode),
                typeUser.hashCode),
            follow.hashCode),
        avatar.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Results')
          ..add('id', id)
          ..add('username', username)
          ..add('isHimself', isHimself)
          ..add('isVerified', isVerified)
          ..add('typeUser', typeUser)
          ..add('follow', follow)
          ..add('avatar', avatar))
        .toString();
  }
}

class ResultsBuilder implements Builder<Results, ResultsBuilder> {
  _$Results? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  bool? _isHimself;
  bool? get isHimself => _$this._isHimself;
  set isHimself(bool? isHimself) => _$this._isHimself = isHimself;

  bool? _isVerified;
  bool? get isVerified => _$this._isVerified;
  set isVerified(bool? isVerified) => _$this._isVerified = isVerified;

  String? _typeUser;
  String? get typeUser => _$this._typeUser;
  set typeUser(String? typeUser) => _$this._typeUser = typeUser;

  bool? _follow;
  bool? get follow => _$this._follow;
  set follow(bool? follow) => _$this._follow = follow;

  AvatarBuilder? _avatar;
  AvatarBuilder get avatar => _$this._avatar ??= new AvatarBuilder();
  set avatar(AvatarBuilder? avatar) => _$this._avatar = avatar;

  ResultsBuilder();

  ResultsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _username = $v.username;
      _isHimself = $v.isHimself;
      _isVerified = $v.isVerified;
      _typeUser = $v.typeUser;
      _follow = $v.follow;
      _avatar = $v.avatar?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Results other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Results;
  }

  @override
  void update(void Function(ResultsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Results build() {
    _$Results _$result;
    try {
      _$result = _$v ??
          new _$Results._(
              id: id,
              username: username,
              isHimself: isHimself,
              isVerified: isVerified,
              typeUser: typeUser,
              follow: follow,
              avatar: _avatar?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'avatar';
        _avatar?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Results', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Avatar extends Avatar {
  @override
  final int? id;
  @override
  final String? file;
  @override
  final String? format;
  @override
  final String? name;

  factory _$Avatar([void Function(AvatarBuilder)? updates]) =>
      (new AvatarBuilder()..update(updates)).build();

  _$Avatar._({this.id, this.file, this.format, this.name}) : super._();

  @override
  Avatar rebuild(void Function(AvatarBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AvatarBuilder toBuilder() => new AvatarBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Avatar &&
        id == other.id &&
        file == other.file &&
        format == other.format &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), file.hashCode), format.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Avatar')
          ..add('id', id)
          ..add('file', file)
          ..add('format', format)
          ..add('name', name))
        .toString();
  }
}

class AvatarBuilder implements Builder<Avatar, AvatarBuilder> {
  _$Avatar? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  AvatarBuilder();

  AvatarBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _file = $v.file;
      _format = $v.format;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Avatar other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Avatar;
  }

  @override
  void update(void Function(AvatarBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Avatar build() {
    final _$result =
        _$v ?? new _$Avatar._(id: id, file: file, format: format, name: name);
    replace(_$result);
    return _$result;
  }
}

class _$UnFollowPostModel extends UnFollowPostModel {
  @override
  final int? followingUser;

  factory _$UnFollowPostModel(
          [void Function(UnFollowPostModelBuilder)? updates]) =>
      (new UnFollowPostModelBuilder()..update(updates)).build();

  _$UnFollowPostModel._({this.followingUser}) : super._();

  @override
  UnFollowPostModel rebuild(void Function(UnFollowPostModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnFollowPostModelBuilder toBuilder() =>
      new UnFollowPostModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnFollowPostModel && followingUser == other.followingUser;
  }

  @override
  int get hashCode {
    return $jf($jc(0, followingUser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UnFollowPostModel')
          ..add('followingUser', followingUser))
        .toString();
  }
}

class UnFollowPostModelBuilder
    implements Builder<UnFollowPostModel, UnFollowPostModelBuilder> {
  _$UnFollowPostModel? _$v;

  int? _followingUser;
  int? get followingUser => _$this._followingUser;
  set followingUser(int? followingUser) =>
      _$this._followingUser = followingUser;

  UnFollowPostModelBuilder();

  UnFollowPostModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _followingUser = $v.followingUser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnFollowPostModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnFollowPostModel;
  }

  @override
  void update(void Function(UnFollowPostModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UnFollowPostModel build() {
    final _$result =
        _$v ?? new _$UnFollowPostModel._(followingUser: followingUser);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
