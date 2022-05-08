// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PasswordEventTearOff {
  const _$PasswordEventTearOff();

  _ChangePassword changePassword(
      {required PasswordEntity passwordEntity,
      required String confirmedEmail}) {
    return _ChangePassword(
      passwordEntity: passwordEntity,
      confirmedEmail: confirmedEmail,
    );
  }
}

/// @nodoc
const $PasswordEvent = _$PasswordEventTearOff();

/// @nodoc
mixin _$PasswordEvent {
  PasswordEntity get passwordEntity => throw _privateConstructorUsedError;
  String get confirmedEmail => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PasswordEntity passwordEntity, String confirmedEmail)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PasswordEntity passwordEntity, String confirmedEmail)?
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordEntity passwordEntity, String confirmedEmail)?
        changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordEventCopyWith<PasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordEventCopyWith<$Res> {
  factory $PasswordEventCopyWith(
          PasswordEvent value, $Res Function(PasswordEvent) then) =
      _$PasswordEventCopyWithImpl<$Res>;
  $Res call({PasswordEntity passwordEntity, String confirmedEmail});
}

/// @nodoc
class _$PasswordEventCopyWithImpl<$Res>
    implements $PasswordEventCopyWith<$Res> {
  _$PasswordEventCopyWithImpl(this._value, this._then);

  final PasswordEvent _value;
  // ignore: unused_field
  final $Res Function(PasswordEvent) _then;

  @override
  $Res call({
    Object? passwordEntity = freezed,
    Object? confirmedEmail = freezed,
  }) {
    return _then(_value.copyWith(
      passwordEntity: passwordEntity == freezed
          ? _value.passwordEntity
          : passwordEntity // ignore: cast_nullable_to_non_nullable
              as PasswordEntity,
      confirmedEmail: confirmedEmail == freezed
          ? _value.confirmedEmail
          : confirmedEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ChangePasswordCopyWith<$Res>
    implements $PasswordEventCopyWith<$Res> {
  factory _$ChangePasswordCopyWith(
          _ChangePassword value, $Res Function(_ChangePassword) then) =
      __$ChangePasswordCopyWithImpl<$Res>;
  @override
  $Res call({PasswordEntity passwordEntity, String confirmedEmail});
}

/// @nodoc
class __$ChangePasswordCopyWithImpl<$Res>
    extends _$PasswordEventCopyWithImpl<$Res>
    implements _$ChangePasswordCopyWith<$Res> {
  __$ChangePasswordCopyWithImpl(
      _ChangePassword _value, $Res Function(_ChangePassword) _then)
      : super(_value, (v) => _then(v as _ChangePassword));

  @override
  _ChangePassword get _value => super._value as _ChangePassword;

  @override
  $Res call({
    Object? passwordEntity = freezed,
    Object? confirmedEmail = freezed,
  }) {
    return _then(_ChangePassword(
      passwordEntity: passwordEntity == freezed
          ? _value.passwordEntity
          : passwordEntity // ignore: cast_nullable_to_non_nullable
              as PasswordEntity,
      confirmedEmail: confirmedEmail == freezed
          ? _value.confirmedEmail
          : confirmedEmail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePassword implements _ChangePassword {
  _$_ChangePassword(
      {required this.passwordEntity, required this.confirmedEmail});

  @override
  final PasswordEntity passwordEntity;
  @override
  final String confirmedEmail;

  @override
  String toString() {
    return 'PasswordEvent.changePassword(passwordEntity: $passwordEntity, confirmedEmail: $confirmedEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePassword &&
            (identical(other.passwordEntity, passwordEntity) ||
                other.passwordEntity == passwordEntity) &&
            (identical(other.confirmedEmail, confirmedEmail) ||
                other.confirmedEmail == confirmedEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordEntity, confirmedEmail);

  @JsonKey(ignore: true)
  @override
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      __$ChangePasswordCopyWithImpl<_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            PasswordEntity passwordEntity, String confirmedEmail)
        changePassword,
  }) {
    return changePassword(passwordEntity, confirmedEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(PasswordEntity passwordEntity, String confirmedEmail)?
        changePassword,
  }) {
    return changePassword?.call(passwordEntity, confirmedEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordEntity passwordEntity, String confirmedEmail)?
        changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(passwordEntity, confirmedEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _ChangePassword implements PasswordEvent {
  factory _ChangePassword(
      {required PasswordEntity passwordEntity,
      required String confirmedEmail}) = _$_ChangePassword;

  @override
  PasswordEntity get passwordEntity;
  @override
  String get confirmedEmail;
  @override
  @JsonKey(ignore: true)
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PasswordStateTearOff {
  const _$PasswordStateTearOff();

  _PasswordState call(
      {dynamic isLoading = false, bool update = false, String exception = ''}) {
    return _PasswordState(
      isLoading: isLoading,
      update: update,
      exception: exception,
    );
  }
}

/// @nodoc
const $PasswordState = _$PasswordStateTearOff();

/// @nodoc
mixin _$PasswordState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  bool get update => throw _privateConstructorUsedError;
  String get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordStateCopyWith<PasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordStateCopyWith<$Res> {
  factory $PasswordStateCopyWith(
          PasswordState value, $Res Function(PasswordState) then) =
      _$PasswordStateCopyWithImpl<$Res>;
  $Res call({dynamic isLoading, bool update, String exception});
}

/// @nodoc
class _$PasswordStateCopyWithImpl<$Res>
    implements $PasswordStateCopyWith<$Res> {
  _$PasswordStateCopyWithImpl(this._value, this._then);

  final PasswordState _value;
  // ignore: unused_field
  final $Res Function(PasswordState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? update = freezed,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      update: update == freezed
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$PasswordStateCopyWith<$Res>
    implements $PasswordStateCopyWith<$Res> {
  factory _$PasswordStateCopyWith(
          _PasswordState value, $Res Function(_PasswordState) then) =
      __$PasswordStateCopyWithImpl<$Res>;
  @override
  $Res call({dynamic isLoading, bool update, String exception});
}

/// @nodoc
class __$PasswordStateCopyWithImpl<$Res>
    extends _$PasswordStateCopyWithImpl<$Res>
    implements _$PasswordStateCopyWith<$Res> {
  __$PasswordStateCopyWithImpl(
      _PasswordState _value, $Res Function(_PasswordState) _then)
      : super(_value, (v) => _then(v as _PasswordState));

  @override
  _PasswordState get _value => super._value as _PasswordState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? update = freezed,
    Object? exception = freezed,
  }) {
    return _then(_PasswordState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      update: update == freezed
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordState implements _PasswordState {
  _$_PasswordState(
      {this.isLoading = false, this.update = false, this.exception = ''});

  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;
  @JsonKey(defaultValue: false)
  @override
  final bool update;
  @JsonKey(defaultValue: '')
  @override
  final String exception;

  @override
  String toString() {
    return 'PasswordState(isLoading: $isLoading, update: $update, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.update, update) || other.update == update) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(isLoading), update, exception);

  @JsonKey(ignore: true)
  @override
  _$PasswordStateCopyWith<_PasswordState> get copyWith =>
      __$PasswordStateCopyWithImpl<_PasswordState>(this, _$identity);
}

abstract class _PasswordState implements PasswordState {
  factory _PasswordState({dynamic isLoading, bool update, String exception}) =
      _$_PasswordState;

  @override
  dynamic get isLoading;
  @override
  bool get update;
  @override
  String get exception;
  @override
  @JsonKey(ignore: true)
  _$PasswordStateCopyWith<_PasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
