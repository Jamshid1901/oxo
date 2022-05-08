// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_avatar.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProfileAvatarModel> _$profileAvatarModelSerializer =
    new _$ProfileAvatarModelSerializer();

class _$ProfileAvatarModelSerializer
    implements StructuredSerializer<ProfileAvatarModel> {
  @override
  final Iterable<Type> types = const [ProfileAvatarModel, _$ProfileAvatarModel];
  @override
  final String wireName = 'ProfileAvatarModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ProfileAvatarModel object,
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
  ProfileAvatarModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileAvatarModelBuilder();

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

class _$ProfileAvatarModel extends ProfileAvatarModel {
  @override
  final int? id;
  @override
  final String? file;

  factory _$ProfileAvatarModel(
          [void Function(ProfileAvatarModelBuilder)? updates]) =>
      (new ProfileAvatarModelBuilder()..update(updates)).build();

  _$ProfileAvatarModel._({this.id, this.file}) : super._();

  @override
  ProfileAvatarModel rebuild(
          void Function(ProfileAvatarModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileAvatarModelBuilder toBuilder() =>
      new ProfileAvatarModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileAvatarModel && id == other.id && file == other.file;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), file.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProfileAvatarModel')
          ..add('id', id)
          ..add('file', file))
        .toString();
  }
}

class ProfileAvatarModelBuilder
    implements Builder<ProfileAvatarModel, ProfileAvatarModelBuilder> {
  _$ProfileAvatarModel? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  ProfileAvatarModelBuilder();

  ProfileAvatarModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _file = $v.file;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileAvatarModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfileAvatarModel;
  }

  @override
  void update(void Function(ProfileAvatarModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProfileAvatarModel build() {
    final _$result = _$v ?? new _$ProfileAvatarModel._(id: id, file: file);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
