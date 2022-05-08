// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserSearchHistoryModel> _$userSearchHistoryModelSerializer =
    new _$UserSearchHistoryModelSerializer();
Serializer<UserSearchHistoryResultModel>
    _$userSearchHistoryResultModelSerializer =
    new _$UserSearchHistoryResultModelSerializer();
Serializer<UserSearchHistoryPostModel> _$userSearchHistoryPostModelSerializer =
    new _$UserSearchHistoryPostModelSerializer();

class _$UserSearchHistoryModelSerializer
    implements StructuredSerializer<UserSearchHistoryModel> {
  @override
  final Iterable<Type> types = const [
    UserSearchHistoryModel,
    _$UserSearchHistoryModel
  ];
  @override
  final String wireName = 'UserSearchHistoryModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserSearchHistoryModel object,
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
            specifiedType: const FullType(BuiltList, const [
              const FullType.nullable(UserSearchHistoryResultModel)
            ])));
    }
    return result;
  }

  @override
  UserSearchHistoryModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserSearchHistoryModelBuilder();

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
                const FullType.nullable(UserSearchHistoryResultModel)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$UserSearchHistoryResultModelSerializer
    implements StructuredSerializer<UserSearchHistoryResultModel> {
  @override
  final Iterable<Type> types = const [
    UserSearchHistoryResultModel,
    _$UserSearchHistoryResultModel
  ];
  @override
  final String wireName = 'UserSearchHistoryResultModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserSearchHistoryResultModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserSearchHistoryResultModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserSearchHistoryResultModelBuilder();

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
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserSearchHistoryPostModelSerializer
    implements StructuredSerializer<UserSearchHistoryPostModel> {
  @override
  final Iterable<Type> types = const [
    UserSearchHistoryPostModel,
    _$UserSearchHistoryPostModel
  ];
  @override
  final String wireName = 'UserSearchHistoryPostModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserSearchHistoryPostModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserSearchHistoryPostModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserSearchHistoryPostModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserSearchHistoryModel extends UserSearchHistoryModel {
  @override
  final int? count;
  @override
  final BuiltList<UserSearchHistoryResultModel?>? results;

  factory _$UserSearchHistoryModel(
          [void Function(UserSearchHistoryModelBuilder)? updates]) =>
      (new UserSearchHistoryModelBuilder()..update(updates)).build();

  _$UserSearchHistoryModel._({this.count, this.results}) : super._();

  @override
  UserSearchHistoryModel rebuild(
          void Function(UserSearchHistoryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSearchHistoryModelBuilder toBuilder() =>
      new UserSearchHistoryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSearchHistoryModel &&
        count == other.count &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, count.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserSearchHistoryModel')
          ..add('count', count)
          ..add('results', results))
        .toString();
  }
}

class UserSearchHistoryModelBuilder
    implements Builder<UserSearchHistoryModel, UserSearchHistoryModelBuilder> {
  _$UserSearchHistoryModel? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  ListBuilder<UserSearchHistoryResultModel?>? _results;
  ListBuilder<UserSearchHistoryResultModel?> get results =>
      _$this._results ??= new ListBuilder<UserSearchHistoryResultModel?>();
  set results(ListBuilder<UserSearchHistoryResultModel?>? results) =>
      _$this._results = results;

  UserSearchHistoryModelBuilder();

  UserSearchHistoryModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSearchHistoryModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSearchHistoryModel;
  }

  @override
  void update(void Function(UserSearchHistoryModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserSearchHistoryModel build() {
    _$UserSearchHistoryModel _$result;
    try {
      _$result = _$v ??
          new _$UserSearchHistoryModel._(
              count: count, results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserSearchHistoryModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UserSearchHistoryResultModel extends UserSearchHistoryResultModel {
  @override
  final int? id;
  @override
  final String? text;

  factory _$UserSearchHistoryResultModel(
          [void Function(UserSearchHistoryResultModelBuilder)? updates]) =>
      (new UserSearchHistoryResultModelBuilder()..update(updates)).build();

  _$UserSearchHistoryResultModel._({this.id, this.text}) : super._();

  @override
  UserSearchHistoryResultModel rebuild(
          void Function(UserSearchHistoryResultModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSearchHistoryResultModelBuilder toBuilder() =>
      new UserSearchHistoryResultModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSearchHistoryResultModel &&
        id == other.id &&
        text == other.text;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), text.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserSearchHistoryResultModel')
          ..add('id', id)
          ..add('text', text))
        .toString();
  }
}

class UserSearchHistoryResultModelBuilder
    implements
        Builder<UserSearchHistoryResultModel,
            UserSearchHistoryResultModelBuilder> {
  _$UserSearchHistoryResultModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  UserSearchHistoryResultModelBuilder();

  UserSearchHistoryResultModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSearchHistoryResultModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSearchHistoryResultModel;
  }

  @override
  void update(void Function(UserSearchHistoryResultModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserSearchHistoryResultModel build() {
    final _$result =
        _$v ?? new _$UserSearchHistoryResultModel._(id: id, text: text);
    replace(_$result);
    return _$result;
  }
}

class _$UserSearchHistoryPostModel extends UserSearchHistoryPostModel {
  @override
  final String? text;

  factory _$UserSearchHistoryPostModel(
          [void Function(UserSearchHistoryPostModelBuilder)? updates]) =>
      (new UserSearchHistoryPostModelBuilder()..update(updates)).build();

  _$UserSearchHistoryPostModel._({this.text}) : super._();

  @override
  UserSearchHistoryPostModel rebuild(
          void Function(UserSearchHistoryPostModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSearchHistoryPostModelBuilder toBuilder() =>
      new UserSearchHistoryPostModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSearchHistoryPostModel && text == other.text;
  }

  @override
  int get hashCode {
    return $jf($jc(0, text.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserSearchHistoryPostModel')
          ..add('text', text))
        .toString();
  }
}

class UserSearchHistoryPostModelBuilder
    implements
        Builder<UserSearchHistoryPostModel, UserSearchHistoryPostModelBuilder> {
  _$UserSearchHistoryPostModel? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  UserSearchHistoryPostModelBuilder();

  UserSearchHistoryPostModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSearchHistoryPostModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSearchHistoryPostModel;
  }

  @override
  void update(void Function(UserSearchHistoryPostModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserSearchHistoryPostModel build() {
    final _$result = _$v ?? new _$UserSearchHistoryPostModel._(text: text);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
