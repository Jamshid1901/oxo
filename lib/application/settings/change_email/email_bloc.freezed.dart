// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmailEventTearOff {
  const _$EmailEventTearOff();

  _SendNewEmail sendNewEmail({required NewEmail newEmail}) {
    return _SendNewEmail(
      newEmail: newEmail,
    );
  }

  _ConfirmEmail confirmEmail({required ConfirmEmail confirmEmail}) {
    return _ConfirmEmail(
      confirmEmail: confirmEmail,
    );
  }

  _resendEmail resendEmail({required NewEmail newEmail}) {
    return _resendEmail(
      newEmail: newEmail,
    );
  }
}

/// @nodoc
const $EmailEvent = _$EmailEventTearOff();

/// @nodoc
mixin _$EmailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewEmail newEmail) sendNewEmail,
    required TResult Function(ConfirmEmail confirmEmail) confirmEmail,
    required TResult Function(NewEmail newEmail) resendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NewEmail newEmail)? sendNewEmail,
    TResult Function(ConfirmEmail confirmEmail)? confirmEmail,
    TResult Function(NewEmail newEmail)? resendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewEmail newEmail)? sendNewEmail,
    TResult Function(ConfirmEmail confirmEmail)? confirmEmail,
    TResult Function(NewEmail newEmail)? resendEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNewEmail value) sendNewEmail,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_resendEmail value) resendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNewEmail value)? sendNewEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_resendEmail value)? resendEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNewEmail value)? sendNewEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_resendEmail value)? resendEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailEventCopyWith<$Res> {
  factory $EmailEventCopyWith(
          EmailEvent value, $Res Function(EmailEvent) then) =
      _$EmailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailEventCopyWithImpl<$Res> implements $EmailEventCopyWith<$Res> {
  _$EmailEventCopyWithImpl(this._value, this._then);

  final EmailEvent _value;
  // ignore: unused_field
  final $Res Function(EmailEvent) _then;
}

/// @nodoc
abstract class _$SendNewEmailCopyWith<$Res> {
  factory _$SendNewEmailCopyWith(
          _SendNewEmail value, $Res Function(_SendNewEmail) then) =
      __$SendNewEmailCopyWithImpl<$Res>;
  $Res call({NewEmail newEmail});
}

/// @nodoc
class __$SendNewEmailCopyWithImpl<$Res> extends _$EmailEventCopyWithImpl<$Res>
    implements _$SendNewEmailCopyWith<$Res> {
  __$SendNewEmailCopyWithImpl(
      _SendNewEmail _value, $Res Function(_SendNewEmail) _then)
      : super(_value, (v) => _then(v as _SendNewEmail));

  @override
  _SendNewEmail get _value => super._value as _SendNewEmail;

  @override
  $Res call({
    Object? newEmail = freezed,
  }) {
    return _then(_SendNewEmail(
      newEmail: newEmail == freezed
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as NewEmail,
    ));
  }
}

/// @nodoc

class _$_SendNewEmail implements _SendNewEmail {
  _$_SendNewEmail({required this.newEmail});

  @override
  final NewEmail newEmail;

  @override
  String toString() {
    return 'EmailEvent.sendNewEmail(newEmail: $newEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendNewEmail &&
            (identical(other.newEmail, newEmail) ||
                other.newEmail == newEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newEmail);

  @JsonKey(ignore: true)
  @override
  _$SendNewEmailCopyWith<_SendNewEmail> get copyWith =>
      __$SendNewEmailCopyWithImpl<_SendNewEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewEmail newEmail) sendNewEmail,
    required TResult Function(ConfirmEmail confirmEmail) confirmEmail,
    required TResult Function(NewEmail newEmail) resendEmail,
  }) {
    return sendNewEmail(newEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NewEmail newEmail)? sendNewEmail,
    TResult Function(ConfirmEmail confirmEmail)? confirmEmail,
    TResult Function(NewEmail newEmail)? resendEmail,
  }) {
    return sendNewEmail?.call(newEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewEmail newEmail)? sendNewEmail,
    TResult Function(ConfirmEmail confirmEmail)? confirmEmail,
    TResult Function(NewEmail newEmail)? resendEmail,
    required TResult orElse(),
  }) {
    if (sendNewEmail != null) {
      return sendNewEmail(newEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNewEmail value) sendNewEmail,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_resendEmail value) resendEmail,
  }) {
    return sendNewEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNewEmail value)? sendNewEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_resendEmail value)? resendEmail,
  }) {
    return sendNewEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNewEmail value)? sendNewEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_resendEmail value)? resendEmail,
    required TResult orElse(),
  }) {
    if (sendNewEmail != null) {
      return sendNewEmail(this);
    }
    return orElse();
  }
}

abstract class _SendNewEmail implements EmailEvent {
  factory _SendNewEmail({required NewEmail newEmail}) = _$_SendNewEmail;

  NewEmail get newEmail;
  @JsonKey(ignore: true)
  _$SendNewEmailCopyWith<_SendNewEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmEmailCopyWith<$Res> {
  factory _$ConfirmEmailCopyWith(
          _ConfirmEmail value, $Res Function(_ConfirmEmail) then) =
      __$ConfirmEmailCopyWithImpl<$Res>;
  $Res call({ConfirmEmail confirmEmail});
}

/// @nodoc
class __$ConfirmEmailCopyWithImpl<$Res> extends _$EmailEventCopyWithImpl<$Res>
    implements _$ConfirmEmailCopyWith<$Res> {
  __$ConfirmEmailCopyWithImpl(
      _ConfirmEmail _value, $Res Function(_ConfirmEmail) _then)
      : super(_value, (v) => _then(v as _ConfirmEmail));

  @override
  _ConfirmEmail get _value => super._value as _ConfirmEmail;

  @override
  $Res call({
    Object? confirmEmail = freezed,
  }) {
    return _then(_ConfirmEmail(
      confirmEmail: confirmEmail == freezed
          ? _value.confirmEmail
          : confirmEmail // ignore: cast_nullable_to_non_nullable
              as ConfirmEmail,
    ));
  }
}

/// @nodoc

class _$_ConfirmEmail implements _ConfirmEmail {
  _$_ConfirmEmail({required this.confirmEmail});

  @override
  final ConfirmEmail confirmEmail;

  @override
  String toString() {
    return 'EmailEvent.confirmEmail(confirmEmail: $confirmEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConfirmEmail &&
            (identical(other.confirmEmail, confirmEmail) ||
                other.confirmEmail == confirmEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmEmail);

  @JsonKey(ignore: true)
  @override
  _$ConfirmEmailCopyWith<_ConfirmEmail> get copyWith =>
      __$ConfirmEmailCopyWithImpl<_ConfirmEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewEmail newEmail) sendNewEmail,
    required TResult Function(ConfirmEmail confirmEmail) confirmEmail,
    required TResult Function(NewEmail newEmail) resendEmail,
  }) {
    return confirmEmail(this.confirmEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NewEmail newEmail)? sendNewEmail,
    TResult Function(ConfirmEmail confirmEmail)? confirmEmail,
    TResult Function(NewEmail newEmail)? resendEmail,
  }) {
    return confirmEmail?.call(this.confirmEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewEmail newEmail)? sendNewEmail,
    TResult Function(ConfirmEmail confirmEmail)? confirmEmail,
    TResult Function(NewEmail newEmail)? resendEmail,
    required TResult orElse(),
  }) {
    if (confirmEmail != null) {
      return confirmEmail(this.confirmEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNewEmail value) sendNewEmail,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_resendEmail value) resendEmail,
  }) {
    return confirmEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNewEmail value)? sendNewEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_resendEmail value)? resendEmail,
  }) {
    return confirmEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNewEmail value)? sendNewEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_resendEmail value)? resendEmail,
    required TResult orElse(),
  }) {
    if (confirmEmail != null) {
      return confirmEmail(this);
    }
    return orElse();
  }
}

abstract class _ConfirmEmail implements EmailEvent {
  factory _ConfirmEmail({required ConfirmEmail confirmEmail}) = _$_ConfirmEmail;

  ConfirmEmail get confirmEmail;
  @JsonKey(ignore: true)
  _$ConfirmEmailCopyWith<_ConfirmEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$resendEmailCopyWith<$Res> {
  factory _$resendEmailCopyWith(
          _resendEmail value, $Res Function(_resendEmail) then) =
      __$resendEmailCopyWithImpl<$Res>;
  $Res call({NewEmail newEmail});
}

/// @nodoc
class __$resendEmailCopyWithImpl<$Res> extends _$EmailEventCopyWithImpl<$Res>
    implements _$resendEmailCopyWith<$Res> {
  __$resendEmailCopyWithImpl(
      _resendEmail _value, $Res Function(_resendEmail) _then)
      : super(_value, (v) => _then(v as _resendEmail));

  @override
  _resendEmail get _value => super._value as _resendEmail;

  @override
  $Res call({
    Object? newEmail = freezed,
  }) {
    return _then(_resendEmail(
      newEmail: newEmail == freezed
          ? _value.newEmail
          : newEmail // ignore: cast_nullable_to_non_nullable
              as NewEmail,
    ));
  }
}

/// @nodoc

class _$_resendEmail implements _resendEmail {
  _$_resendEmail({required this.newEmail});

  @override
  final NewEmail newEmail;

  @override
  String toString() {
    return 'EmailEvent.resendEmail(newEmail: $newEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _resendEmail &&
            (identical(other.newEmail, newEmail) ||
                other.newEmail == newEmail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newEmail);

  @JsonKey(ignore: true)
  @override
  _$resendEmailCopyWith<_resendEmail> get copyWith =>
      __$resendEmailCopyWithImpl<_resendEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewEmail newEmail) sendNewEmail,
    required TResult Function(ConfirmEmail confirmEmail) confirmEmail,
    required TResult Function(NewEmail newEmail) resendEmail,
  }) {
    return resendEmail(newEmail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NewEmail newEmail)? sendNewEmail,
    TResult Function(ConfirmEmail confirmEmail)? confirmEmail,
    TResult Function(NewEmail newEmail)? resendEmail,
  }) {
    return resendEmail?.call(newEmail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewEmail newEmail)? sendNewEmail,
    TResult Function(ConfirmEmail confirmEmail)? confirmEmail,
    TResult Function(NewEmail newEmail)? resendEmail,
    required TResult orElse(),
  }) {
    if (resendEmail != null) {
      return resendEmail(newEmail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SendNewEmail value) sendNewEmail,
    required TResult Function(_ConfirmEmail value) confirmEmail,
    required TResult Function(_resendEmail value) resendEmail,
  }) {
    return resendEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SendNewEmail value)? sendNewEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_resendEmail value)? resendEmail,
  }) {
    return resendEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SendNewEmail value)? sendNewEmail,
    TResult Function(_ConfirmEmail value)? confirmEmail,
    TResult Function(_resendEmail value)? resendEmail,
    required TResult orElse(),
  }) {
    if (resendEmail != null) {
      return resendEmail(this);
    }
    return orElse();
  }
}

abstract class _resendEmail implements EmailEvent {
  factory _resendEmail({required NewEmail newEmail}) = _$_resendEmail;

  NewEmail get newEmail;
  @JsonKey(ignore: true)
  _$resendEmailCopyWith<_resendEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EmailStateTearOff {
  const _$EmailStateTearOff();

  _EmailState call(
      {dynamic isLoading = false,
      dynamic isEmailSend = false,
      dynamic isConfirmed = false,
      String exception = ''}) {
    return _EmailState(
      isLoading: isLoading,
      isEmailSend: isEmailSend,
      isConfirmed: isConfirmed,
      exception: exception,
    );
  }
}

/// @nodoc
const $EmailState = _$EmailStateTearOff();

/// @nodoc
mixin _$EmailState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  dynamic get isEmailSend => throw _privateConstructorUsedError;
  dynamic get isConfirmed => throw _privateConstructorUsedError;
  String get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailStateCopyWith<EmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailStateCopyWith<$Res> {
  factory $EmailStateCopyWith(
          EmailState value, $Res Function(EmailState) then) =
      _$EmailStateCopyWithImpl<$Res>;
  $Res call(
      {dynamic isLoading,
      dynamic isEmailSend,
      dynamic isConfirmed,
      String exception});
}

/// @nodoc
class _$EmailStateCopyWithImpl<$Res> implements $EmailStateCopyWith<$Res> {
  _$EmailStateCopyWithImpl(this._value, this._then);

  final EmailState _value;
  // ignore: unused_field
  final $Res Function(EmailState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isEmailSend = freezed,
    Object? isConfirmed = freezed,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isEmailSend: isEmailSend == freezed
          ? _value.isEmailSend
          : isEmailSend // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isConfirmed: isConfirmed == freezed
          ? _value.isConfirmed
          : isConfirmed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EmailStateCopyWith<$Res> implements $EmailStateCopyWith<$Res> {
  factory _$EmailStateCopyWith(
          _EmailState value, $Res Function(_EmailState) then) =
      __$EmailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic isLoading,
      dynamic isEmailSend,
      dynamic isConfirmed,
      String exception});
}

/// @nodoc
class __$EmailStateCopyWithImpl<$Res> extends _$EmailStateCopyWithImpl<$Res>
    implements _$EmailStateCopyWith<$Res> {
  __$EmailStateCopyWithImpl(
      _EmailState _value, $Res Function(_EmailState) _then)
      : super(_value, (v) => _then(v as _EmailState));

  @override
  _EmailState get _value => super._value as _EmailState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isEmailSend = freezed,
    Object? isConfirmed = freezed,
    Object? exception = freezed,
  }) {
    return _then(_EmailState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      isEmailSend: isEmailSend == freezed ? _value.isEmailSend : isEmailSend,
      isConfirmed: isConfirmed == freezed ? _value.isConfirmed : isConfirmed,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailState implements _EmailState {
  _$_EmailState(
      {this.isLoading = false,
      this.isEmailSend = false,
      this.isConfirmed = false,
      this.exception = ''});

  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;
  @JsonKey(defaultValue: false)
  @override
  final dynamic isEmailSend;
  @JsonKey(defaultValue: false)
  @override
  final dynamic isConfirmed;
  @JsonKey(defaultValue: '')
  @override
  final String exception;

  @override
  String toString() {
    return 'EmailState(isLoading: $isLoading, isEmailSend: $isEmailSend, isConfirmed: $isConfirmed, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isEmailSend, isEmailSend) &&
            const DeepCollectionEquality()
                .equals(other.isConfirmed, isConfirmed) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isEmailSend),
      const DeepCollectionEquality().hash(isConfirmed),
      exception);

  @JsonKey(ignore: true)
  @override
  _$EmailStateCopyWith<_EmailState> get copyWith =>
      __$EmailStateCopyWithImpl<_EmailState>(this, _$identity);
}

abstract class _EmailState implements EmailState {
  factory _EmailState(
      {dynamic isLoading,
      dynamic isEmailSend,
      dynamic isConfirmed,
      String exception}) = _$_EmailState;

  @override
  dynamic get isLoading;
  @override
  dynamic get isEmailSend;
  @override
  dynamic get isConfirmed;
  @override
  String get exception;
  @override
  @JsonKey(ignore: true)
  _$EmailStateCopyWith<_EmailState> get copyWith =>
      throw _privateConstructorUsedError;
}
