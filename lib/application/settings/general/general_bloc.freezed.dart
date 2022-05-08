// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'general_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

  _GetGeneralSettings getGeneralSettings() {
    return const _GetGeneralSettings();
  }

  _GetPrivacyPolicy getPrivacyPolicy() {
    return const _GetPrivacyPolicy();
  }

  _PutGeneralInfoSettings putGeneralInfoSettings(
      {required GeneralInfoEntity generalInfoEntity}) {
    return _PutGeneralInfoSettings(
      generalInfoEntity: generalInfoEntity,
    );
  }
}

/// @nodoc
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGeneralSettings,
    required TResult Function() getPrivacyPolicy,
    required TResult Function(GeneralInfoEntity generalInfoEntity)
        putGeneralInfoSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getGeneralSettings,
    TResult Function()? getPrivacyPolicy,
    TResult Function(GeneralInfoEntity generalInfoEntity)?
        putGeneralInfoSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGeneralSettings,
    TResult Function()? getPrivacyPolicy,
    TResult Function(GeneralInfoEntity generalInfoEntity)?
        putGeneralInfoSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGeneralSettings value) getGeneralSettings,
    required TResult Function(_GetPrivacyPolicy value) getPrivacyPolicy,
    required TResult Function(_PutGeneralInfoSettings value)
        putGeneralInfoSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGeneralSettings value)? getGeneralSettings,
    TResult Function(_GetPrivacyPolicy value)? getPrivacyPolicy,
    TResult Function(_PutGeneralInfoSettings value)? putGeneralInfoSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGeneralSettings value)? getGeneralSettings,
    TResult Function(_GetPrivacyPolicy value)? getPrivacyPolicy,
    TResult Function(_PutGeneralInfoSettings value)? putGeneralInfoSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class _$GetGeneralSettingsCopyWith<$Res> {
  factory _$GetGeneralSettingsCopyWith(
          _GetGeneralSettings value, $Res Function(_GetGeneralSettings) then) =
      __$GetGeneralSettingsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetGeneralSettingsCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$GetGeneralSettingsCopyWith<$Res> {
  __$GetGeneralSettingsCopyWithImpl(
      _GetGeneralSettings _value, $Res Function(_GetGeneralSettings) _then)
      : super(_value, (v) => _then(v as _GetGeneralSettings));

  @override
  _GetGeneralSettings get _value => super._value as _GetGeneralSettings;
}

/// @nodoc

class _$_GetGeneralSettings implements _GetGeneralSettings {
  const _$_GetGeneralSettings();

  @override
  String toString() {
    return 'SettingsEvent.getGeneralSettings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetGeneralSettings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGeneralSettings,
    required TResult Function() getPrivacyPolicy,
    required TResult Function(GeneralInfoEntity generalInfoEntity)
        putGeneralInfoSettings,
  }) {
    return getGeneralSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getGeneralSettings,
    TResult Function()? getPrivacyPolicy,
    TResult Function(GeneralInfoEntity generalInfoEntity)?
        putGeneralInfoSettings,
  }) {
    return getGeneralSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGeneralSettings,
    TResult Function()? getPrivacyPolicy,
    TResult Function(GeneralInfoEntity generalInfoEntity)?
        putGeneralInfoSettings,
    required TResult orElse(),
  }) {
    if (getGeneralSettings != null) {
      return getGeneralSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGeneralSettings value) getGeneralSettings,
    required TResult Function(_GetPrivacyPolicy value) getPrivacyPolicy,
    required TResult Function(_PutGeneralInfoSettings value)
        putGeneralInfoSettings,
  }) {
    return getGeneralSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGeneralSettings value)? getGeneralSettings,
    TResult Function(_GetPrivacyPolicy value)? getPrivacyPolicy,
    TResult Function(_PutGeneralInfoSettings value)? putGeneralInfoSettings,
  }) {
    return getGeneralSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGeneralSettings value)? getGeneralSettings,
    TResult Function(_GetPrivacyPolicy value)? getPrivacyPolicy,
    TResult Function(_PutGeneralInfoSettings value)? putGeneralInfoSettings,
    required TResult orElse(),
  }) {
    if (getGeneralSettings != null) {
      return getGeneralSettings(this);
    }
    return orElse();
  }
}

abstract class _GetGeneralSettings implements SettingsEvent {
  const factory _GetGeneralSettings() = _$_GetGeneralSettings;
}

/// @nodoc
abstract class _$GetPrivacyPolicyCopyWith<$Res> {
  factory _$GetPrivacyPolicyCopyWith(
          _GetPrivacyPolicy value, $Res Function(_GetPrivacyPolicy) then) =
      __$GetPrivacyPolicyCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetPrivacyPolicyCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$GetPrivacyPolicyCopyWith<$Res> {
  __$GetPrivacyPolicyCopyWithImpl(
      _GetPrivacyPolicy _value, $Res Function(_GetPrivacyPolicy) _then)
      : super(_value, (v) => _then(v as _GetPrivacyPolicy));

  @override
  _GetPrivacyPolicy get _value => super._value as _GetPrivacyPolicy;
}

/// @nodoc

class _$_GetPrivacyPolicy implements _GetPrivacyPolicy {
  const _$_GetPrivacyPolicy();

  @override
  String toString() {
    return 'SettingsEvent.getPrivacyPolicy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetPrivacyPolicy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGeneralSettings,
    required TResult Function() getPrivacyPolicy,
    required TResult Function(GeneralInfoEntity generalInfoEntity)
        putGeneralInfoSettings,
  }) {
    return getPrivacyPolicy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getGeneralSettings,
    TResult Function()? getPrivacyPolicy,
    TResult Function(GeneralInfoEntity generalInfoEntity)?
        putGeneralInfoSettings,
  }) {
    return getPrivacyPolicy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGeneralSettings,
    TResult Function()? getPrivacyPolicy,
    TResult Function(GeneralInfoEntity generalInfoEntity)?
        putGeneralInfoSettings,
    required TResult orElse(),
  }) {
    if (getPrivacyPolicy != null) {
      return getPrivacyPolicy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGeneralSettings value) getGeneralSettings,
    required TResult Function(_GetPrivacyPolicy value) getPrivacyPolicy,
    required TResult Function(_PutGeneralInfoSettings value)
        putGeneralInfoSettings,
  }) {
    return getPrivacyPolicy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGeneralSettings value)? getGeneralSettings,
    TResult Function(_GetPrivacyPolicy value)? getPrivacyPolicy,
    TResult Function(_PutGeneralInfoSettings value)? putGeneralInfoSettings,
  }) {
    return getPrivacyPolicy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGeneralSettings value)? getGeneralSettings,
    TResult Function(_GetPrivacyPolicy value)? getPrivacyPolicy,
    TResult Function(_PutGeneralInfoSettings value)? putGeneralInfoSettings,
    required TResult orElse(),
  }) {
    if (getPrivacyPolicy != null) {
      return getPrivacyPolicy(this);
    }
    return orElse();
  }
}

abstract class _GetPrivacyPolicy implements SettingsEvent {
  const factory _GetPrivacyPolicy() = _$_GetPrivacyPolicy;
}

/// @nodoc
abstract class _$PutGeneralInfoSettingsCopyWith<$Res> {
  factory _$PutGeneralInfoSettingsCopyWith(_PutGeneralInfoSettings value,
          $Res Function(_PutGeneralInfoSettings) then) =
      __$PutGeneralInfoSettingsCopyWithImpl<$Res>;
  $Res call({GeneralInfoEntity generalInfoEntity});
}

/// @nodoc
class __$PutGeneralInfoSettingsCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$PutGeneralInfoSettingsCopyWith<$Res> {
  __$PutGeneralInfoSettingsCopyWithImpl(_PutGeneralInfoSettings _value,
      $Res Function(_PutGeneralInfoSettings) _then)
      : super(_value, (v) => _then(v as _PutGeneralInfoSettings));

  @override
  _PutGeneralInfoSettings get _value => super._value as _PutGeneralInfoSettings;

  @override
  $Res call({
    Object? generalInfoEntity = freezed,
  }) {
    return _then(_PutGeneralInfoSettings(
      generalInfoEntity: generalInfoEntity == freezed
          ? _value.generalInfoEntity
          : generalInfoEntity // ignore: cast_nullable_to_non_nullable
              as GeneralInfoEntity,
    ));
  }
}

/// @nodoc

class _$_PutGeneralInfoSettings implements _PutGeneralInfoSettings {
  const _$_PutGeneralInfoSettings({required this.generalInfoEntity});

  @override
  final GeneralInfoEntity generalInfoEntity;

  @override
  String toString() {
    return 'SettingsEvent.putGeneralInfoSettings(generalInfoEntity: $generalInfoEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PutGeneralInfoSettings &&
            (identical(other.generalInfoEntity, generalInfoEntity) ||
                other.generalInfoEntity == generalInfoEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, generalInfoEntity);

  @JsonKey(ignore: true)
  @override
  _$PutGeneralInfoSettingsCopyWith<_PutGeneralInfoSettings> get copyWith =>
      __$PutGeneralInfoSettingsCopyWithImpl<_PutGeneralInfoSettings>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getGeneralSettings,
    required TResult Function() getPrivacyPolicy,
    required TResult Function(GeneralInfoEntity generalInfoEntity)
        putGeneralInfoSettings,
  }) {
    return putGeneralInfoSettings(generalInfoEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getGeneralSettings,
    TResult Function()? getPrivacyPolicy,
    TResult Function(GeneralInfoEntity generalInfoEntity)?
        putGeneralInfoSettings,
  }) {
    return putGeneralInfoSettings?.call(generalInfoEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getGeneralSettings,
    TResult Function()? getPrivacyPolicy,
    TResult Function(GeneralInfoEntity generalInfoEntity)?
        putGeneralInfoSettings,
    required TResult orElse(),
  }) {
    if (putGeneralInfoSettings != null) {
      return putGeneralInfoSettings(generalInfoEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetGeneralSettings value) getGeneralSettings,
    required TResult Function(_GetPrivacyPolicy value) getPrivacyPolicy,
    required TResult Function(_PutGeneralInfoSettings value)
        putGeneralInfoSettings,
  }) {
    return putGeneralInfoSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetGeneralSettings value)? getGeneralSettings,
    TResult Function(_GetPrivacyPolicy value)? getPrivacyPolicy,
    TResult Function(_PutGeneralInfoSettings value)? putGeneralInfoSettings,
  }) {
    return putGeneralInfoSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetGeneralSettings value)? getGeneralSettings,
    TResult Function(_GetPrivacyPolicy value)? getPrivacyPolicy,
    TResult Function(_PutGeneralInfoSettings value)? putGeneralInfoSettings,
    required TResult orElse(),
  }) {
    if (putGeneralInfoSettings != null) {
      return putGeneralInfoSettings(this);
    }
    return orElse();
  }
}

abstract class _PutGeneralInfoSettings implements SettingsEvent {
  const factory _PutGeneralInfoSettings(
          {required GeneralInfoEntity generalInfoEntity}) =
      _$_PutGeneralInfoSettings;

  GeneralInfoEntity get generalInfoEntity;
  @JsonKey(ignore: true)
  _$PutGeneralInfoSettingsCopyWith<_PutGeneralInfoSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _SettingsState call(
      {dynamic isLoading = false,
      String? gender = 'gender',
      String? dob = '2022-01-01',
      String? email = 'email',
      bool lfgSearch = false,
      bool privateAccount = false,
      String exception = '',
      bool isUpdated = false,
      PrivacyPolicy? privacyPolicy = null}) {
    return _SettingsState(
      isLoading: isLoading,
      gender: gender,
      dob: dob,
      email: email,
      lfgSearch: lfgSearch,
      privateAccount: privateAccount,
      exception: exception,
      isUpdated: isUpdated,
      privacyPolicy: privacyPolicy,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  bool get lfgSearch => throw _privateConstructorUsedError;
  bool get privateAccount => throw _privateConstructorUsedError;
  String get exception => throw _privateConstructorUsedError;
  bool get isUpdated => throw _privateConstructorUsedError;
  PrivacyPolicy? get privacyPolicy => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call(
      {dynamic isLoading,
      String? gender,
      String? dob,
      String? email,
      bool lfgSearch,
      bool privateAccount,
      String exception,
      bool isUpdated,
      PrivacyPolicy? privacyPolicy});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? email = freezed,
    Object? lfgSearch = freezed,
    Object? privateAccount = freezed,
    Object? exception = freezed,
    Object? isUpdated = freezed,
    Object? privacyPolicy = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      lfgSearch: lfgSearch == freezed
          ? _value.lfgSearch
          : lfgSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      privateAccount: privateAccount == freezed
          ? _value.privateAccount
          : privateAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
      isUpdated: isUpdated == freezed
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      privacyPolicy: privacyPolicy == freezed
          ? _value.privacyPolicy
          : privacyPolicy // ignore: cast_nullable_to_non_nullable
              as PrivacyPolicy?,
    ));
  }
}

/// @nodoc
abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic isLoading,
      String? gender,
      String? dob,
      String? email,
      bool lfgSearch,
      bool privateAccount,
      String exception,
      bool isUpdated,
      PrivacyPolicy? privacyPolicy});
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(
      _SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? gender = freezed,
    Object? dob = freezed,
    Object? email = freezed,
    Object? lfgSearch = freezed,
    Object? privateAccount = freezed,
    Object? exception = freezed,
    Object? isUpdated = freezed,
    Object? privacyPolicy = freezed,
  }) {
    return _then(_SettingsState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      lfgSearch: lfgSearch == freezed
          ? _value.lfgSearch
          : lfgSearch // ignore: cast_nullable_to_non_nullable
              as bool,
      privateAccount: privateAccount == freezed
          ? _value.privateAccount
          : privateAccount // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
      isUpdated: isUpdated == freezed
          ? _value.isUpdated
          : isUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      privacyPolicy: privacyPolicy == freezed
          ? _value.privacyPolicy
          : privacyPolicy // ignore: cast_nullable_to_non_nullable
              as PrivacyPolicy?,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  _$_SettingsState(
      {this.isLoading = false,
      this.gender = 'gender',
      this.dob = '2022-01-01',
      this.email = 'email',
      this.lfgSearch = false,
      this.privateAccount = false,
      this.exception = '',
      this.isUpdated = false,
      this.privacyPolicy = null});

  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;
  @JsonKey(defaultValue: 'gender')
  @override
  final String? gender;
  @JsonKey(defaultValue: '2022-01-01')
  @override
  final String? dob;
  @JsonKey(defaultValue: 'email')
  @override
  final String? email;
  @JsonKey(defaultValue: false)
  @override
  final bool lfgSearch;
  @JsonKey(defaultValue: false)
  @override
  final bool privateAccount;
  @JsonKey(defaultValue: '')
  @override
  final String exception;
  @JsonKey(defaultValue: false)
  @override
  final bool isUpdated;
  @JsonKey(defaultValue: null)
  @override
  final PrivacyPolicy? privacyPolicy;

  @override
  String toString() {
    return 'SettingsState(isLoading: $isLoading, gender: $gender, dob: $dob, email: $email, lfgSearch: $lfgSearch, privateAccount: $privateAccount, exception: $exception, isUpdated: $isUpdated, privacyPolicy: $privacyPolicy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.lfgSearch, lfgSearch) ||
                other.lfgSearch == lfgSearch) &&
            (identical(other.privateAccount, privateAccount) ||
                other.privateAccount == privateAccount) &&
            (identical(other.exception, exception) ||
                other.exception == exception) &&
            (identical(other.isUpdated, isUpdated) ||
                other.isUpdated == isUpdated) &&
            (identical(other.privacyPolicy, privacyPolicy) ||
                other.privacyPolicy == privacyPolicy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      gender,
      dob,
      email,
      lfgSearch,
      privateAccount,
      exception,
      isUpdated,
      privacyPolicy);

  @JsonKey(ignore: true)
  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  factory _SettingsState(
      {dynamic isLoading,
      String? gender,
      String? dob,
      String? email,
      bool lfgSearch,
      bool privateAccount,
      String exception,
      bool isUpdated,
      PrivacyPolicy? privacyPolicy}) = _$_SettingsState;

  @override
  dynamic get isLoading;
  @override
  String? get gender;
  @override
  String? get dob;
  @override
  String? get email;
  @override
  bool get lfgSearch;
  @override
  bool get privateAccount;
  @override
  String get exception;
  @override
  bool get isUpdated;
  @override
  PrivacyPolicy? get privacyPolicy;
  @override
  @JsonKey(ignore: true)
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
