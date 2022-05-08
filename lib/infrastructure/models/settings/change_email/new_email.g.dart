// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_email.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewEmail> _$newEmailSerializer = new _$NewEmailSerializer();

class _$NewEmailSerializer implements StructuredSerializer<NewEmail> {
  @override
  final Iterable<Type> types = const [NewEmail, _$NewEmail];
  @override
  final String wireName = 'NewEmail';

  @override
  Iterable<Object?> serialize(Serializers serializers, NewEmail object,
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
    return result;
  }

  @override
  NewEmail deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewEmailBuilder();

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
      }
    }

    return result.build();
  }
}

class _$NewEmail extends NewEmail {
  @override
  final String? newEmail;

  factory _$NewEmail([void Function(NewEmailBuilder)? updates]) =>
      (new NewEmailBuilder()..update(updates)).build();

  _$NewEmail._({this.newEmail}) : super._();

  @override
  NewEmail rebuild(void Function(NewEmailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewEmailBuilder toBuilder() => new NewEmailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewEmail && newEmail == other.newEmail;
  }

  @override
  int get hashCode {
    return $jf($jc(0, newEmail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewEmail')..add('newEmail', newEmail))
        .toString();
  }
}

class NewEmailBuilder implements Builder<NewEmail, NewEmailBuilder> {
  _$NewEmail? _$v;

  String? _newEmail;
  String? get newEmail => _$this._newEmail;
  set newEmail(String? newEmail) => _$this._newEmail = newEmail;

  NewEmailBuilder();

  NewEmailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newEmail = $v.newEmail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewEmail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewEmail;
  }

  @override
  void update(void Function(NewEmailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewEmail build() {
    final _$result = _$v ?? new _$NewEmail._(newEmail: newEmail);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
