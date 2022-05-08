// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PasswordEntity> _$passwordEntitySerializer =
    new _$PasswordEntitySerializer();

class _$PasswordEntitySerializer
    implements StructuredSerializer<PasswordEntity> {
  @override
  final Iterable<Type> types = const [PasswordEntity, _$PasswordEntity];
  @override
  final String wireName = 'PasswordEntity';

  @override
  Iterable<Object?> serialize(Serializers serializers, PasswordEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.oldPassword;
    if (value != null) {
      result
        ..add('old_password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.newPassword;
    if (value != null) {
      result
        ..add('new_password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PasswordEntity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PasswordEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'old_password':
          result.oldPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'new_password':
          result.newPassword = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PasswordEntity extends PasswordEntity {
  @override
  final String? oldPassword;
  @override
  final String? newPassword;

  factory _$PasswordEntity([void Function(PasswordEntityBuilder)? updates]) =>
      (new PasswordEntityBuilder()..update(updates)).build();

  _$PasswordEntity._({this.oldPassword, this.newPassword}) : super._();

  @override
  PasswordEntity rebuild(void Function(PasswordEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PasswordEntityBuilder toBuilder() =>
      new PasswordEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PasswordEntity &&
        oldPassword == other.oldPassword &&
        newPassword == other.newPassword;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, oldPassword.hashCode), newPassword.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PasswordEntity')
          ..add('oldPassword', oldPassword)
          ..add('newPassword', newPassword))
        .toString();
  }
}

class PasswordEntityBuilder
    implements Builder<PasswordEntity, PasswordEntityBuilder> {
  _$PasswordEntity? _$v;

  String? _oldPassword;
  String? get oldPassword => _$this._oldPassword;
  set oldPassword(String? oldPassword) => _$this._oldPassword = oldPassword;

  String? _newPassword;
  String? get newPassword => _$this._newPassword;
  set newPassword(String? newPassword) => _$this._newPassword = newPassword;

  PasswordEntityBuilder();

  PasswordEntityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oldPassword = $v.oldPassword;
      _newPassword = $v.newPassword;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PasswordEntity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PasswordEntity;
  }

  @override
  void update(void Function(PasswordEntityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PasswordEntity build() {
    final _$result = _$v ??
        new _$PasswordEntity._(
            oldPassword: oldPassword, newPassword: newPassword);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
