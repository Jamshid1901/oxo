// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_settings_me.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<General> _$generalSerializer = new _$GeneralSerializer();

class _$GeneralSerializer implements StructuredSerializer<General> {
  @override
  final Iterable<Type> types = const [General, _$General];
  @override
  final String wireName = 'General';

  @override
  Iterable<Object?> serialize(Serializers serializers, General object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dob;
    if (value != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.privateAccount;
    if (value != null) {
      result
        ..add('private_account')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.lfgSearch;
    if (value != null) {
      result
        ..add('lfg_search')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  General deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeneralBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'birthday':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'private_account':
          result.privateAccount = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'lfg_search':
          result.lfgSearch = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$General extends General {
  @override
  final String? gender;
  @override
  final String? dob;
  @override
  final String? email;
  @override
  final bool? privateAccount;
  @override
  final bool? lfgSearch;

  factory _$General([void Function(GeneralBuilder)? updates]) =>
      (new GeneralBuilder()..update(updates)).build();

  _$General._(
      {this.gender, this.dob, this.email, this.privateAccount, this.lfgSearch})
      : super._();

  @override
  General rebuild(void Function(GeneralBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeneralBuilder toBuilder() => new GeneralBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is General &&
        gender == other.gender &&
        dob == other.dob &&
        email == other.email &&
        privateAccount == other.privateAccount &&
        lfgSearch == other.lfgSearch;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, gender.hashCode), dob.hashCode), email.hashCode),
            privateAccount.hashCode),
        lfgSearch.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('General')
          ..add('gender', gender)
          ..add('dob', dob)
          ..add('email', email)
          ..add('privateAccount', privateAccount)
          ..add('lfgSearch', lfgSearch))
        .toString();
  }
}

class GeneralBuilder implements Builder<General, GeneralBuilder> {
  _$General? _$v;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _dob;
  String? get dob => _$this._dob;
  set dob(String? dob) => _$this._dob = dob;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  bool? _privateAccount;
  bool? get privateAccount => _$this._privateAccount;
  set privateAccount(bool? privateAccount) =>
      _$this._privateAccount = privateAccount;

  bool? _lfgSearch;
  bool? get lfgSearch => _$this._lfgSearch;
  set lfgSearch(bool? lfgSearch) => _$this._lfgSearch = lfgSearch;

  GeneralBuilder();

  GeneralBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gender = $v.gender;
      _dob = $v.dob;
      _email = $v.email;
      _privateAccount = $v.privateAccount;
      _lfgSearch = $v.lfgSearch;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(General other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$General;
  }

  @override
  void update(void Function(GeneralBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$General build() {
    final _$result = _$v ??
        new _$General._(
            gender: gender,
            dob: dob,
            email: email,
            privateAccount: privateAccount,
            lfgSearch: lfgSearch);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
