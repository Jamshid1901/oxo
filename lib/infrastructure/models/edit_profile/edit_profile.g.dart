// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserNameM> _$userNameMSerializer = new _$UserNameMSerializer();

class _$UserNameMSerializer implements StructuredSerializer<UserNameM> {
  @override
  final Iterable<Type> types = const [UserNameM, _$UserNameM];
  @override
  final String wireName = 'UserNameM';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserNameM object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.userName,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UserNameM deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserNameMBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserNameM extends UserNameM {
  @override
  final String userName;

  factory _$UserNameM([void Function(UserNameMBuilder)? updates]) =>
      (new UserNameMBuilder()..update(updates)).build();

  _$UserNameM._({required this.userName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(userName, 'UserNameM', 'userName');
  }

  @override
  UserNameM rebuild(void Function(UserNameMBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserNameMBuilder toBuilder() => new UserNameMBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserNameM && userName == other.userName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserNameM')..add('userName', userName))
        .toString();
  }
}

class UserNameMBuilder implements Builder<UserNameM, UserNameMBuilder> {
  _$UserNameM? _$v;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  UserNameMBuilder();

  UserNameMBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userName = $v.userName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserNameM other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserNameM;
  }

  @override
  void update(void Function(UserNameMBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserNameM build() {
    final _$result = _$v ??
        new _$UserNameM._(
            userName: BuiltValueNullFieldError.checkNotNull(
                userName, 'UserNameM', 'userName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
