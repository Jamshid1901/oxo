// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_email.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ConfirmEmail> _$confirmEmailSerializer =
    new _$ConfirmEmailSerializer();

class _$ConfirmEmailSerializer implements StructuredSerializer<ConfirmEmail> {
  @override
  final Iterable<Type> types = const [ConfirmEmail, _$ConfirmEmail];
  @override
  final String wireName = 'ConfirmEmail';

  @override
  Iterable<Object?> serialize(Serializers serializers, ConfirmEmail object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.newEmail;
    if (value != null) {
      result
        ..add('new_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.code;
    if (value != null) {
      result
        ..add('code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ConfirmEmail deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConfirmEmailBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'new_email':
          result.newEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ConfirmEmail extends ConfirmEmail {
  @override
  final String? newEmail;
  @override
  final String? code;

  factory _$ConfirmEmail([void Function(ConfirmEmailBuilder)? updates]) =>
      (new ConfirmEmailBuilder()..update(updates)).build();

  _$ConfirmEmail._({this.newEmail, this.code}) : super._();

  @override
  ConfirmEmail rebuild(void Function(ConfirmEmailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConfirmEmailBuilder toBuilder() => new ConfirmEmailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConfirmEmail &&
        newEmail == other.newEmail &&
        code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, newEmail.hashCode), code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ConfirmEmail')
          ..add('newEmail', newEmail)
          ..add('code', code))
        .toString();
  }
}

class ConfirmEmailBuilder
    implements Builder<ConfirmEmail, ConfirmEmailBuilder> {
  _$ConfirmEmail? _$v;

  String? _newEmail;
  String? get newEmail => _$this._newEmail;
  set newEmail(String? newEmail) => _$this._newEmail = newEmail;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  ConfirmEmailBuilder();

  ConfirmEmailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newEmail = $v.newEmail;
      _code = $v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConfirmEmail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConfirmEmail;
  }

  @override
  void update(void Function(ConfirmEmailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ConfirmEmail build() {
    final _$result =
        _$v ?? new _$ConfirmEmail._(newEmail: newEmail, code: code);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
