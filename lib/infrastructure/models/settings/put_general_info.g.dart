// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'put_general_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GeneralInfoEntity> _$generalInfoEntitySerializer =
    new _$GeneralInfoEntitySerializer();
Serializer<PrivacyPolicy> _$privacyPolicySerializer =
    new _$PrivacyPolicySerializer();

class _$GeneralInfoEntitySerializer
    implements StructuredSerializer<GeneralInfoEntity> {
  @override
  final Iterable<Type> types = const [GeneralInfoEntity, _$GeneralInfoEntity];
  @override
  final String wireName = 'GeneralInfoEntity';

  @override
  Iterable<Object?> serialize(Serializers serializers, GeneralInfoEntity object,
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
    value = object.birthday;
    if (value != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GeneralInfoEntity deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GeneralInfoEntityBuilder();

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
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PrivacyPolicySerializer implements StructuredSerializer<PrivacyPolicy> {
  @override
  final Iterable<Type> types = const [PrivacyPolicy, _$PrivacyPolicy];
  @override
  final String wireName = 'PrivacyPolicy';

  @override
  Iterable<Object?> serialize(Serializers serializers, PrivacyPolicy object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.privacyPolicy;
    if (value != null) {
      result
        ..add('privacy_policy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.termsConditions;
    if (value != null) {
      result
        ..add('terms_conditions')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PrivacyPolicy deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrivacyPolicyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'privacy_policy':
          result.privacyPolicy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'terms_conditions':
          result.termsConditions = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GeneralInfoEntity extends GeneralInfoEntity {
  @override
  final String? gender;
  @override
  final String? birthday;

  factory _$GeneralInfoEntity(
          [void Function(GeneralInfoEntityBuilder)? updates]) =>
      (new GeneralInfoEntityBuilder()..update(updates)).build();

  _$GeneralInfoEntity._({this.gender, this.birthday}) : super._();

  @override
  GeneralInfoEntity rebuild(void Function(GeneralInfoEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeneralInfoEntityBuilder toBuilder() =>
      new GeneralInfoEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeneralInfoEntity &&
        gender == other.gender &&
        birthday == other.birthday;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, gender.hashCode), birthday.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GeneralInfoEntity')
          ..add('gender', gender)
          ..add('birthday', birthday))
        .toString();
  }
}

class GeneralInfoEntityBuilder
    implements Builder<GeneralInfoEntity, GeneralInfoEntityBuilder> {
  _$GeneralInfoEntity? _$v;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  GeneralInfoEntityBuilder();

  GeneralInfoEntityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _gender = $v.gender;
      _birthday = $v.birthday;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeneralInfoEntity other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GeneralInfoEntity;
  }

  @override
  void update(void Function(GeneralInfoEntityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GeneralInfoEntity build() {
    final _$result =
        _$v ?? new _$GeneralInfoEntity._(gender: gender, birthday: birthday);
    replace(_$result);
    return _$result;
  }
}

class _$PrivacyPolicy extends PrivacyPolicy {
  @override
  final String? privacyPolicy;
  @override
  final String? termsConditions;

  factory _$PrivacyPolicy([void Function(PrivacyPolicyBuilder)? updates]) =>
      (new PrivacyPolicyBuilder()..update(updates)).build();

  _$PrivacyPolicy._({this.privacyPolicy, this.termsConditions}) : super._();

  @override
  PrivacyPolicy rebuild(void Function(PrivacyPolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrivacyPolicyBuilder toBuilder() => new PrivacyPolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrivacyPolicy &&
        privacyPolicy == other.privacyPolicy &&
        termsConditions == other.termsConditions;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, privacyPolicy.hashCode), termsConditions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PrivacyPolicy')
          ..add('privacyPolicy', privacyPolicy)
          ..add('termsConditions', termsConditions))
        .toString();
  }
}

class PrivacyPolicyBuilder
    implements Builder<PrivacyPolicy, PrivacyPolicyBuilder> {
  _$PrivacyPolicy? _$v;

  String? _privacyPolicy;
  String? get privacyPolicy => _$this._privacyPolicy;
  set privacyPolicy(String? privacyPolicy) =>
      _$this._privacyPolicy = privacyPolicy;

  String? _termsConditions;
  String? get termsConditions => _$this._termsConditions;
  set termsConditions(String? termsConditions) =>
      _$this._termsConditions = termsConditions;

  PrivacyPolicyBuilder();

  PrivacyPolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _privacyPolicy = $v.privacyPolicy;
      _termsConditions = $v.termsConditions;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrivacyPolicy other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrivacyPolicy;
  }

  @override
  void update(void Function(PrivacyPolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PrivacyPolicy build() {
    final _$result = _$v ??
        new _$PrivacyPolicy._(
            privacyPolicy: privacyPolicy, termsConditions: termsConditions);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
