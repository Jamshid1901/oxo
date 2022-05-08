// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_background.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProfileBackgroundModel> _$profileBackgroundModelSerializer =
    new _$ProfileBackgroundModelSerializer();

class _$ProfileBackgroundModelSerializer
    implements StructuredSerializer<ProfileBackgroundModel> {
  @override
  final Iterable<Type> types = const [
    ProfileBackgroundModel,
    _$ProfileBackgroundModel
  ];
  @override
  final String wireName = 'ProfileBackgroundModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ProfileBackgroundModel object,
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
    return result;
  }

  @override
  ProfileBackgroundModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileBackgroundModelBuilder();

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
      }
    }

    return result.build();
  }
}

class _$ProfileBackgroundModel extends ProfileBackgroundModel {
  @override
  final int? id;
  @override
  final String? file;

  factory _$ProfileBackgroundModel(
          [void Function(ProfileBackgroundModelBuilder)? updates]) =>
      (new ProfileBackgroundModelBuilder()..update(updates)).build();

  _$ProfileBackgroundModel._({this.id, this.file}) : super._();

  @override
  ProfileBackgroundModel rebuild(
          void Function(ProfileBackgroundModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileBackgroundModelBuilder toBuilder() =>
      new ProfileBackgroundModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileBackgroundModel &&
        id == other.id &&
        file == other.file;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), file.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProfileBackgroundModel')
          ..add('id', id)
          ..add('file', file))
        .toString();
  }
}

class ProfileBackgroundModelBuilder
    implements Builder<ProfileBackgroundModel, ProfileBackgroundModelBuilder> {
  _$ProfileBackgroundModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  ProfileBackgroundModelBuilder();

  ProfileBackgroundModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _file = $v.file;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileBackgroundModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfileBackgroundModel;
  }

  @override
  void update(void Function(ProfileBackgroundModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProfileBackgroundModel build() {
    final _$result = _$v ?? new _$ProfileBackgroundModel._(id: id, file: file);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
