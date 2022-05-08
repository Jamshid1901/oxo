// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignInStateTearOff {
  const _$SignInStateTearOff();

  _SignInState call(
      {dynamic isLoading = false,
      bool isEmailValid = true,
      bool isPasswordValid = true,
      bool isUsernameExists = false,
      bool isEmailExists = false,
      bool navigateToHome = false,
      bool proceedToGetPassword = false,
      bool proceedToChangePassword = false,
      bool proceedToChooseInterests = false,
      bool proceedToVerifyCode = false,
      List<int> gameList = const [],
      List<Game> allGames = const [],
      String exception = ''}) {
    return _SignInState(
      isLoading: isLoading,
      isEmailValid: isEmailValid,
      isPasswordValid: isPasswordValid,
      isUsernameExists: isUsernameExists,
      isEmailExists: isEmailExists,
      navigateToHome: navigateToHome,
      proceedToGetPassword: proceedToGetPassword,
      proceedToChangePassword: proceedToChangePassword,
      proceedToChooseInterests: proceedToChooseInterests,
      proceedToVerifyCode: proceedToVerifyCode,
      gameList: gameList,
      allGames: allGames,
      exception: exception,
    );
  }
}

/// @nodoc
const $SignInState = _$SignInStateTearOff();

/// @nodoc
mixin _$SignInState {
  dynamic get isLoading => throw _privateConstructorUsedError;
  bool get isEmailValid => throw _privateConstructorUsedError;
  bool get isPasswordValid => throw _privateConstructorUsedError;
  bool get isUsernameExists => throw _privateConstructorUsedError;
  bool get isEmailExists => throw _privateConstructorUsedError;
  bool get navigateToHome => throw _privateConstructorUsedError;
  bool get proceedToGetPassword => throw _privateConstructorUsedError;
  bool get proceedToChangePassword => throw _privateConstructorUsedError;
  bool get proceedToChooseInterests => throw _privateConstructorUsedError;
  bool get proceedToVerifyCode => throw _privateConstructorUsedError;
  List<int> get gameList => throw _privateConstructorUsedError;
  List<Game> get allGames => throw _privateConstructorUsedError;
  String get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {dynamic isLoading,
      bool isEmailValid,
      bool isPasswordValid,
      bool isUsernameExists,
      bool isEmailExists,
      bool navigateToHome,
      bool proceedToGetPassword,
      bool proceedToChangePassword,
      bool proceedToChooseInterests,
      bool proceedToVerifyCode,
      List<int> gameList,
      List<Game> allGames,
      String exception});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isEmailValid = freezed,
    Object? isPasswordValid = freezed,
    Object? isUsernameExists = freezed,
    Object? isEmailExists = freezed,
    Object? navigateToHome = freezed,
    Object? proceedToGetPassword = freezed,
    Object? proceedToChangePassword = freezed,
    Object? proceedToChooseInterests = freezed,
    Object? proceedToVerifyCode = freezed,
    Object? gameList = freezed,
    Object? allGames = freezed,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isEmailValid: isEmailValid == freezed
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isUsernameExists: isUsernameExists == freezed
          ? _value.isUsernameExists
          : isUsernameExists // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailExists: isEmailExists == freezed
          ? _value.isEmailExists
          : isEmailExists // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToHome: navigateToHome == freezed
          ? _value.navigateToHome
          : navigateToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToGetPassword: proceedToGetPassword == freezed
          ? _value.proceedToGetPassword
          : proceedToGetPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToChangePassword: proceedToChangePassword == freezed
          ? _value.proceedToChangePassword
          : proceedToChangePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToChooseInterests: proceedToChooseInterests == freezed
          ? _value.proceedToChooseInterests
          : proceedToChooseInterests // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToVerifyCode: proceedToVerifyCode == freezed
          ? _value.proceedToVerifyCode
          : proceedToVerifyCode // ignore: cast_nullable_to_non_nullable
              as bool,
      gameList: gameList == freezed
          ? _value.gameList
          : gameList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      allGames: allGames == freezed
          ? _value.allGames
          : allGames // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {dynamic isLoading,
      bool isEmailValid,
      bool isPasswordValid,
      bool isUsernameExists,
      bool isEmailExists,
      bool navigateToHome,
      bool proceedToGetPassword,
      bool proceedToChangePassword,
      bool proceedToChooseInterests,
      bool proceedToVerifyCode,
      List<int> gameList,
      List<Game> allGames,
      String exception});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isEmailValid = freezed,
    Object? isPasswordValid = freezed,
    Object? isUsernameExists = freezed,
    Object? isEmailExists = freezed,
    Object? navigateToHome = freezed,
    Object? proceedToGetPassword = freezed,
    Object? proceedToChangePassword = freezed,
    Object? proceedToChooseInterests = freezed,
    Object? proceedToVerifyCode = freezed,
    Object? gameList = freezed,
    Object? allGames = freezed,
    Object? exception = freezed,
  }) {
    return _then(_SignInState(
      isLoading: isLoading == freezed ? _value.isLoading : isLoading,
      isEmailValid: isEmailValid == freezed
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: isPasswordValid == freezed
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isUsernameExists: isUsernameExists == freezed
          ? _value.isUsernameExists
          : isUsernameExists // ignore: cast_nullable_to_non_nullable
              as bool,
      isEmailExists: isEmailExists == freezed
          ? _value.isEmailExists
          : isEmailExists // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateToHome: navigateToHome == freezed
          ? _value.navigateToHome
          : navigateToHome // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToGetPassword: proceedToGetPassword == freezed
          ? _value.proceedToGetPassword
          : proceedToGetPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToChangePassword: proceedToChangePassword == freezed
          ? _value.proceedToChangePassword
          : proceedToChangePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToChooseInterests: proceedToChooseInterests == freezed
          ? _value.proceedToChooseInterests
          : proceedToChooseInterests // ignore: cast_nullable_to_non_nullable
              as bool,
      proceedToVerifyCode: proceedToVerifyCode == freezed
          ? _value.proceedToVerifyCode
          : proceedToVerifyCode // ignore: cast_nullable_to_non_nullable
              as bool,
      gameList: gameList == freezed
          ? _value.gameList
          : gameList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      allGames: allGames == freezed
          ? _value.allGames
          : allGames // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      exception: exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {this.isLoading = false,
      this.isEmailValid = true,
      this.isPasswordValid = true,
      this.isUsernameExists = false,
      this.isEmailExists = false,
      this.navigateToHome = false,
      this.proceedToGetPassword = false,
      this.proceedToChangePassword = false,
      this.proceedToChooseInterests = false,
      this.proceedToVerifyCode = false,
      this.gameList = const [],
      this.allGames = const [],
      this.exception = ''});

  @JsonKey(defaultValue: false)
  @override
  final dynamic isLoading;
  @JsonKey(defaultValue: true)
  @override
  final bool isEmailValid;
  @JsonKey(defaultValue: true)
  @override
  final bool isPasswordValid;
  @JsonKey(defaultValue: false)
  @override
  final bool isUsernameExists;
  @JsonKey(defaultValue: false)
  @override
  final bool isEmailExists;
  @JsonKey(defaultValue: false)
  @override
  final bool navigateToHome;
  @JsonKey(defaultValue: false)
  @override
  final bool proceedToGetPassword;
  @JsonKey(defaultValue: false)
  @override
  final bool proceedToChangePassword;
  @JsonKey(defaultValue: false)
  @override
  final bool proceedToChooseInterests;
  @JsonKey(defaultValue: false)
  @override
  final bool proceedToVerifyCode;
  @JsonKey(defaultValue: const [])
  @override
  final List<int> gameList;
  @JsonKey(defaultValue: const [])
  @override
  final List<Game> allGames;
  @JsonKey(defaultValue: '')
  @override
  final String exception;

  @override
  String toString() {
    return 'SignInState(isLoading: $isLoading, isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, isUsernameExists: $isUsernameExists, isEmailExists: $isEmailExists, navigateToHome: $navigateToHome, proceedToGetPassword: $proceedToGetPassword, proceedToChangePassword: $proceedToChangePassword, proceedToChooseInterests: $proceedToChooseInterests, proceedToVerifyCode: $proceedToVerifyCode, gameList: $gameList, allGames: $allGames, exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.isEmailValid, isEmailValid) ||
                other.isEmailValid == isEmailValid) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                other.isPasswordValid == isPasswordValid) &&
            (identical(other.isUsernameExists, isUsernameExists) ||
                other.isUsernameExists == isUsernameExists) &&
            (identical(other.isEmailExists, isEmailExists) ||
                other.isEmailExists == isEmailExists) &&
            (identical(other.navigateToHome, navigateToHome) ||
                other.navigateToHome == navigateToHome) &&
            (identical(other.proceedToGetPassword, proceedToGetPassword) ||
                other.proceedToGetPassword == proceedToGetPassword) &&
            (identical(
                    other.proceedToChangePassword, proceedToChangePassword) ||
                other.proceedToChangePassword == proceedToChangePassword) &&
            (identical(
                    other.proceedToChooseInterests, proceedToChooseInterests) ||
                other.proceedToChooseInterests == proceedToChooseInterests) &&
            (identical(other.proceedToVerifyCode, proceedToVerifyCode) ||
                other.proceedToVerifyCode == proceedToVerifyCode) &&
            const DeepCollectionEquality().equals(other.gameList, gameList) &&
            const DeepCollectionEquality().equals(other.allGames, allGames) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      isEmailValid,
      isPasswordValid,
      isUsernameExists,
      isEmailExists,
      navigateToHome,
      proceedToGetPassword,
      proceedToChangePassword,
      proceedToChooseInterests,
      proceedToVerifyCode,
      const DeepCollectionEquality().hash(gameList),
      const DeepCollectionEquality().hash(allGames),
      exception);

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {dynamic isLoading,
      bool isEmailValid,
      bool isPasswordValid,
      bool isUsernameExists,
      bool isEmailExists,
      bool navigateToHome,
      bool proceedToGetPassword,
      bool proceedToChangePassword,
      bool proceedToChooseInterests,
      bool proceedToVerifyCode,
      List<int> gameList,
      List<Game> allGames,
      String exception}) = _$_SignInState;

  @override
  dynamic get isLoading;
  @override
  bool get isEmailValid;
  @override
  bool get isPasswordValid;
  @override
  bool get isUsernameExists;
  @override
  bool get isEmailExists;
  @override
  bool get navigateToHome;
  @override
  bool get proceedToGetPassword;
  @override
  bool get proceedToChangePassword;
  @override
  bool get proceedToChooseInterests;
  @override
  bool get proceedToVerifyCode;
  @override
  List<int> get gameList;
  @override
  List<Game> get allGames;
  @override
  String get exception;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignInEventTearOff {
  const _$SignInEventTearOff();

  _Login login({required Login login}) {
    return _Login(
      login: login,
    );
  }

  _SignUp signUp({required SignUp login}) {
    return _SignUp(
      login: login,
    );
  }

  _ForgotPassword forgotPassword({required ForgotPassword email}) {
    return _ForgotPassword(
      email: email,
    );
  }

  _Resend resend({required ForgotPassword email}) {
    return _Resend(
      email: email,
    );
  }

  _VerifyCode verifyCode(
      {required VerifyCode code, required ResendCodeType type}) {
    return _VerifyCode(
      code: code,
      type: type,
    );
  }

  _NewPassword newPassword({required NewPassword newPassword}) {
    return _NewPassword(
      newPassword: newPassword,
    );
  }

  _AddToGame addToGame({required int id, required AddOrRemove action}) {
    return _AddToGame(
      id: id,
      action: action,
    );
  }

  _GetGameList getGameList() {
    return _GetGameList();
  }

  _AddFavouriteGames addFavouriteGames({required FavouriteGames games}) {
    return _AddFavouriteGames(
      games: games,
    );
  }
}

/// @nodoc
const $SignInEvent = _$SignInEventTearOff();

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Login login) login,
    required TResult Function(SignUp login) signUp,
    required TResult Function(ForgotPassword email) forgotPassword,
    required TResult Function(ForgotPassword email) resend,
    required TResult Function(VerifyCode code, ResendCodeType type) verifyCode,
    required TResult Function(NewPassword newPassword) newPassword,
    required TResult Function(int id, AddOrRemove action) addToGame,
    required TResult Function() getGameList,
    required TResult Function(FavouriteGames games) addFavouriteGames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Resend value) resend,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_AddToGame value) addToGame,
    required TResult Function(_GetGameList value) getGameList,
    required TResult Function(_AddFavouriteGames value) addFavouriteGames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class _$LoginCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) then) =
      __$LoginCopyWithImpl<$Res>;
  $Res call({Login login});
}

/// @nodoc
class __$LoginCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(_Login _value, $Res Function(_Login) _then)
      : super(_value, (v) => _then(v as _Login));

  @override
  _Login get _value => super._value as _Login;

  @override
  $Res call({
    Object? login = freezed,
  }) {
    return _then(_Login(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as Login,
    ));
  }
}

/// @nodoc

class _$_Login implements _Login {
  _$_Login({required this.login});

  @override
  final Login login;

  @override
  String toString() {
    return 'SignInEvent.login(login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Login &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  @JsonKey(ignore: true)
  @override
  _$LoginCopyWith<_Login> get copyWith =>
      __$LoginCopyWithImpl<_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Login login) login,
    required TResult Function(SignUp login) signUp,
    required TResult Function(ForgotPassword email) forgotPassword,
    required TResult Function(ForgotPassword email) resend,
    required TResult Function(VerifyCode code, ResendCodeType type) verifyCode,
    required TResult Function(NewPassword newPassword) newPassword,
    required TResult Function(int id, AddOrRemove action) addToGame,
    required TResult Function() getGameList,
    required TResult Function(FavouriteGames games) addFavouriteGames,
  }) {
    return login(this.login);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
  }) {
    return login?.call(this.login);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this.login);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Resend value) resend,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_AddToGame value) addToGame,
    required TResult Function(_GetGameList value) getGameList,
    required TResult Function(_AddFavouriteGames value) addFavouriteGames,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements SignInEvent {
  factory _Login({required Login login}) = _$_Login;

  Login get login;
  @JsonKey(ignore: true)
  _$LoginCopyWith<_Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignUpCopyWith<$Res> {
  factory _$SignUpCopyWith(_SignUp value, $Res Function(_SignUp) then) =
      __$SignUpCopyWithImpl<$Res>;
  $Res call({SignUp login});
}

/// @nodoc
class __$SignUpCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$SignUpCopyWith<$Res> {
  __$SignUpCopyWithImpl(_SignUp _value, $Res Function(_SignUp) _then)
      : super(_value, (v) => _then(v as _SignUp));

  @override
  _SignUp get _value => super._value as _SignUp;

  @override
  $Res call({
    Object? login = freezed,
  }) {
    return _then(_SignUp(
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as SignUp,
    ));
  }
}

/// @nodoc

class _$_SignUp implements _SignUp {
  _$_SignUp({required this.login});

  @override
  final SignUp login;

  @override
  String toString() {
    return 'SignInEvent.signUp(login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUp &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  @JsonKey(ignore: true)
  @override
  _$SignUpCopyWith<_SignUp> get copyWith =>
      __$SignUpCopyWithImpl<_SignUp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Login login) login,
    required TResult Function(SignUp login) signUp,
    required TResult Function(ForgotPassword email) forgotPassword,
    required TResult Function(ForgotPassword email) resend,
    required TResult Function(VerifyCode code, ResendCodeType type) verifyCode,
    required TResult Function(NewPassword newPassword) newPassword,
    required TResult Function(int id, AddOrRemove action) addToGame,
    required TResult Function() getGameList,
    required TResult Function(FavouriteGames games) addFavouriteGames,
  }) {
    return signUp(this.login);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
  }) {
    return signUp?.call(this.login);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this.login);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Resend value) resend,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_AddToGame value) addToGame,
    required TResult Function(_GetGameList value) getGameList,
    required TResult Function(_AddFavouriteGames value) addFavouriteGames,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
  }) {
    return signUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class _SignUp implements SignInEvent {
  factory _SignUp({required SignUp login}) = _$_SignUp;

  SignUp get login;
  @JsonKey(ignore: true)
  _$SignUpCopyWith<_SignUp> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ForgotPasswordCopyWith<$Res> {
  factory _$ForgotPasswordCopyWith(
          _ForgotPassword value, $Res Function(_ForgotPassword) then) =
      __$ForgotPasswordCopyWithImpl<$Res>;
  $Res call({ForgotPassword email});
}

/// @nodoc
class __$ForgotPasswordCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$ForgotPasswordCopyWith<$Res> {
  __$ForgotPasswordCopyWithImpl(
      _ForgotPassword _value, $Res Function(_ForgotPassword) _then)
      : super(_value, (v) => _then(v as _ForgotPassword));

  @override
  _ForgotPassword get _value => super._value as _ForgotPassword;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_ForgotPassword(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as ForgotPassword,
    ));
  }
}

/// @nodoc

class _$_ForgotPassword implements _ForgotPassword {
  _$_ForgotPassword({required this.email});

  @override
  final ForgotPassword email;

  @override
  String toString() {
    return 'SignInEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ForgotPassword &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  _$ForgotPasswordCopyWith<_ForgotPassword> get copyWith =>
      __$ForgotPasswordCopyWithImpl<_ForgotPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Login login) login,
    required TResult Function(SignUp login) signUp,
    required TResult Function(ForgotPassword email) forgotPassword,
    required TResult Function(ForgotPassword email) resend,
    required TResult Function(VerifyCode code, ResendCodeType type) verifyCode,
    required TResult Function(NewPassword newPassword) newPassword,
    required TResult Function(int id, AddOrRemove action) addToGame,
    required TResult Function() getGameList,
    required TResult Function(FavouriteGames games) addFavouriteGames,
  }) {
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
  }) {
    return forgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Resend value) resend,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_AddToGame value) addToGame,
    required TResult Function(_GetGameList value) getGameList,
    required TResult Function(_AddFavouriteGames value) addFavouriteGames,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements SignInEvent {
  factory _ForgotPassword({required ForgotPassword email}) = _$_ForgotPassword;

  ForgotPassword get email;
  @JsonKey(ignore: true)
  _$ForgotPasswordCopyWith<_ForgotPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ResendCopyWith<$Res> {
  factory _$ResendCopyWith(_Resend value, $Res Function(_Resend) then) =
      __$ResendCopyWithImpl<$Res>;
  $Res call({ForgotPassword email});
}

/// @nodoc
class __$ResendCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$ResendCopyWith<$Res> {
  __$ResendCopyWithImpl(_Resend _value, $Res Function(_Resend) _then)
      : super(_value, (v) => _then(v as _Resend));

  @override
  _Resend get _value => super._value as _Resend;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_Resend(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as ForgotPassword,
    ));
  }
}

/// @nodoc

class _$_Resend implements _Resend {
  _$_Resend({required this.email});

  @override
  final ForgotPassword email;

  @override
  String toString() {
    return 'SignInEvent.resend(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Resend &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  _$ResendCopyWith<_Resend> get copyWith =>
      __$ResendCopyWithImpl<_Resend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Login login) login,
    required TResult Function(SignUp login) signUp,
    required TResult Function(ForgotPassword email) forgotPassword,
    required TResult Function(ForgotPassword email) resend,
    required TResult Function(VerifyCode code, ResendCodeType type) verifyCode,
    required TResult Function(NewPassword newPassword) newPassword,
    required TResult Function(int id, AddOrRemove action) addToGame,
    required TResult Function() getGameList,
    required TResult Function(FavouriteGames games) addFavouriteGames,
  }) {
    return resend(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
  }) {
    return resend?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Resend value) resend,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_AddToGame value) addToGame,
    required TResult Function(_GetGameList value) getGameList,
    required TResult Function(_AddFavouriteGames value) addFavouriteGames,
  }) {
    return resend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
  }) {
    return resend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(this);
    }
    return orElse();
  }
}

abstract class _Resend implements SignInEvent {
  factory _Resend({required ForgotPassword email}) = _$_Resend;

  ForgotPassword get email;
  @JsonKey(ignore: true)
  _$ResendCopyWith<_Resend> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerifyCodeCopyWith<$Res> {
  factory _$VerifyCodeCopyWith(
          _VerifyCode value, $Res Function(_VerifyCode) then) =
      __$VerifyCodeCopyWithImpl<$Res>;
  $Res call({VerifyCode code, ResendCodeType type});
}

/// @nodoc
class __$VerifyCodeCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$VerifyCodeCopyWith<$Res> {
  __$VerifyCodeCopyWithImpl(
      _VerifyCode _value, $Res Function(_VerifyCode) _then)
      : super(_value, (v) => _then(v as _VerifyCode));

  @override
  _VerifyCode get _value => super._value as _VerifyCode;

  @override
  $Res call({
    Object? code = freezed,
    Object? type = freezed,
  }) {
    return _then(_VerifyCode(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as VerifyCode,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ResendCodeType,
    ));
  }
}

/// @nodoc

class _$_VerifyCode implements _VerifyCode {
  _$_VerifyCode({required this.code, required this.type});

  @override
  final VerifyCode code;
  @override
  final ResendCodeType type;

  @override
  String toString() {
    return 'SignInEvent.verifyCode(code: $code, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerifyCode &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, type);

  @JsonKey(ignore: true)
  @override
  _$VerifyCodeCopyWith<_VerifyCode> get copyWith =>
      __$VerifyCodeCopyWithImpl<_VerifyCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Login login) login,
    required TResult Function(SignUp login) signUp,
    required TResult Function(ForgotPassword email) forgotPassword,
    required TResult Function(ForgotPassword email) resend,
    required TResult Function(VerifyCode code, ResendCodeType type) verifyCode,
    required TResult Function(NewPassword newPassword) newPassword,
    required TResult Function(int id, AddOrRemove action) addToGame,
    required TResult Function() getGameList,
    required TResult Function(FavouriteGames games) addFavouriteGames,
  }) {
    return verifyCode(code, type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
  }) {
    return verifyCode?.call(code, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(code, type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Resend value) resend,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_AddToGame value) addToGame,
    required TResult Function(_GetGameList value) getGameList,
    required TResult Function(_AddFavouriteGames value) addFavouriteGames,
  }) {
    return verifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
  }) {
    return verifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(this);
    }
    return orElse();
  }
}

abstract class _VerifyCode implements SignInEvent {
  factory _VerifyCode(
      {required VerifyCode code, required ResendCodeType type}) = _$_VerifyCode;

  VerifyCode get code;
  ResendCodeType get type;
  @JsonKey(ignore: true)
  _$VerifyCodeCopyWith<_VerifyCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NewPasswordCopyWith<$Res> {
  factory _$NewPasswordCopyWith(
          _NewPassword value, $Res Function(_NewPassword) then) =
      __$NewPasswordCopyWithImpl<$Res>;
  $Res call({NewPassword newPassword});
}

/// @nodoc
class __$NewPasswordCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$NewPasswordCopyWith<$Res> {
  __$NewPasswordCopyWithImpl(
      _NewPassword _value, $Res Function(_NewPassword) _then)
      : super(_value, (v) => _then(v as _NewPassword));

  @override
  _NewPassword get _value => super._value as _NewPassword;

  @override
  $Res call({
    Object? newPassword = freezed,
  }) {
    return _then(_NewPassword(
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as NewPassword,
    ));
  }
}

/// @nodoc

class _$_NewPassword implements _NewPassword {
  _$_NewPassword({required this.newPassword});

  @override
  final NewPassword newPassword;

  @override
  String toString() {
    return 'SignInEvent.newPassword(newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewPassword &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newPassword);

  @JsonKey(ignore: true)
  @override
  _$NewPasswordCopyWith<_NewPassword> get copyWith =>
      __$NewPasswordCopyWithImpl<_NewPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Login login) login,
    required TResult Function(SignUp login) signUp,
    required TResult Function(ForgotPassword email) forgotPassword,
    required TResult Function(ForgotPassword email) resend,
    required TResult Function(VerifyCode code, ResendCodeType type) verifyCode,
    required TResult Function(NewPassword newPassword) newPassword,
    required TResult Function(int id, AddOrRemove action) addToGame,
    required TResult Function() getGameList,
    required TResult Function(FavouriteGames games) addFavouriteGames,
  }) {
    return newPassword(this.newPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
  }) {
    return newPassword?.call(this.newPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (newPassword != null) {
      return newPassword(this.newPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Resend value) resend,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_AddToGame value) addToGame,
    required TResult Function(_GetGameList value) getGameList,
    required TResult Function(_AddFavouriteGames value) addFavouriteGames,
  }) {
    return newPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
  }) {
    return newPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (newPassword != null) {
      return newPassword(this);
    }
    return orElse();
  }
}

abstract class _NewPassword implements SignInEvent {
  factory _NewPassword({required NewPassword newPassword}) = _$_NewPassword;

  NewPassword get newPassword;
  @JsonKey(ignore: true)
  _$NewPasswordCopyWith<_NewPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddToGameCopyWith<$Res> {
  factory _$AddToGameCopyWith(
          _AddToGame value, $Res Function(_AddToGame) then) =
      __$AddToGameCopyWithImpl<$Res>;
  $Res call({int id, AddOrRemove action});
}

/// @nodoc
class __$AddToGameCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$AddToGameCopyWith<$Res> {
  __$AddToGameCopyWithImpl(_AddToGame _value, $Res Function(_AddToGame) _then)
      : super(_value, (v) => _then(v as _AddToGame));

  @override
  _AddToGame get _value => super._value as _AddToGame;

  @override
  $Res call({
    Object? id = freezed,
    Object? action = freezed,
  }) {
    return _then(_AddToGame(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      action: action == freezed
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as AddOrRemove,
    ));
  }
}

/// @nodoc

class _$_AddToGame implements _AddToGame {
  _$_AddToGame({required this.id, required this.action});

  @override
  final int id;
  @override
  final AddOrRemove action;

  @override
  String toString() {
    return 'SignInEvent.addToGame(id: $id, action: $action)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddToGame &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.action, action) || other.action == action));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, action);

  @JsonKey(ignore: true)
  @override
  _$AddToGameCopyWith<_AddToGame> get copyWith =>
      __$AddToGameCopyWithImpl<_AddToGame>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Login login) login,
    required TResult Function(SignUp login) signUp,
    required TResult Function(ForgotPassword email) forgotPassword,
    required TResult Function(ForgotPassword email) resend,
    required TResult Function(VerifyCode code, ResendCodeType type) verifyCode,
    required TResult Function(NewPassword newPassword) newPassword,
    required TResult Function(int id, AddOrRemove action) addToGame,
    required TResult Function() getGameList,
    required TResult Function(FavouriteGames games) addFavouriteGames,
  }) {
    return addToGame(id, action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
  }) {
    return addToGame?.call(id, action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (addToGame != null) {
      return addToGame(id, action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Resend value) resend,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_AddToGame value) addToGame,
    required TResult Function(_GetGameList value) getGameList,
    required TResult Function(_AddFavouriteGames value) addFavouriteGames,
  }) {
    return addToGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
  }) {
    return addToGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (addToGame != null) {
      return addToGame(this);
    }
    return orElse();
  }
}

abstract class _AddToGame implements SignInEvent {
  factory _AddToGame({required int id, required AddOrRemove action}) =
      _$_AddToGame;

  int get id;
  AddOrRemove get action;
  @JsonKey(ignore: true)
  _$AddToGameCopyWith<_AddToGame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetGameListCopyWith<$Res> {
  factory _$GetGameListCopyWith(
          _GetGameList value, $Res Function(_GetGameList) then) =
      __$GetGameListCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetGameListCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
    implements _$GetGameListCopyWith<$Res> {
  __$GetGameListCopyWithImpl(
      _GetGameList _value, $Res Function(_GetGameList) _then)
      : super(_value, (v) => _then(v as _GetGameList));

  @override
  _GetGameList get _value => super._value as _GetGameList;
}

/// @nodoc

class _$_GetGameList implements _GetGameList {
  _$_GetGameList();

  @override
  String toString() {
    return 'SignInEvent.getGameList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetGameList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Login login) login,
    required TResult Function(SignUp login) signUp,
    required TResult Function(ForgotPassword email) forgotPassword,
    required TResult Function(ForgotPassword email) resend,
    required TResult Function(VerifyCode code, ResendCodeType type) verifyCode,
    required TResult Function(NewPassword newPassword) newPassword,
    required TResult Function(int id, AddOrRemove action) addToGame,
    required TResult Function() getGameList,
    required TResult Function(FavouriteGames games) addFavouriteGames,
  }) {
    return getGameList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
  }) {
    return getGameList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (getGameList != null) {
      return getGameList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Resend value) resend,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_AddToGame value) addToGame,
    required TResult Function(_GetGameList value) getGameList,
    required TResult Function(_AddFavouriteGames value) addFavouriteGames,
  }) {
    return getGameList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
  }) {
    return getGameList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (getGameList != null) {
      return getGameList(this);
    }
    return orElse();
  }
}

abstract class _GetGameList implements SignInEvent {
  factory _GetGameList() = _$_GetGameList;
}

/// @nodoc
abstract class _$AddFavouriteGamesCopyWith<$Res> {
  factory _$AddFavouriteGamesCopyWith(
          _AddFavouriteGames value, $Res Function(_AddFavouriteGames) then) =
      __$AddFavouriteGamesCopyWithImpl<$Res>;
  $Res call({FavouriteGames games});
}

/// @nodoc
class __$AddFavouriteGamesCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$AddFavouriteGamesCopyWith<$Res> {
  __$AddFavouriteGamesCopyWithImpl(
      _AddFavouriteGames _value, $Res Function(_AddFavouriteGames) _then)
      : super(_value, (v) => _then(v as _AddFavouriteGames));

  @override
  _AddFavouriteGames get _value => super._value as _AddFavouriteGames;

  @override
  $Res call({
    Object? games = freezed,
  }) {
    return _then(_AddFavouriteGames(
      games: games == freezed
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as FavouriteGames,
    ));
  }
}

/// @nodoc

class _$_AddFavouriteGames implements _AddFavouriteGames {
  _$_AddFavouriteGames({required this.games});

  @override
  final FavouriteGames games;

  @override
  String toString() {
    return 'SignInEvent.addFavouriteGames(games: $games)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddFavouriteGames &&
            (identical(other.games, games) || other.games == games));
  }

  @override
  int get hashCode => Object.hash(runtimeType, games);

  @JsonKey(ignore: true)
  @override
  _$AddFavouriteGamesCopyWith<_AddFavouriteGames> get copyWith =>
      __$AddFavouriteGamesCopyWithImpl<_AddFavouriteGames>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Login login) login,
    required TResult Function(SignUp login) signUp,
    required TResult Function(ForgotPassword email) forgotPassword,
    required TResult Function(ForgotPassword email) resend,
    required TResult Function(VerifyCode code, ResendCodeType type) verifyCode,
    required TResult Function(NewPassword newPassword) newPassword,
    required TResult Function(int id, AddOrRemove action) addToGame,
    required TResult Function() getGameList,
    required TResult Function(FavouriteGames games) addFavouriteGames,
  }) {
    return addFavouriteGames(games);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
  }) {
    return addFavouriteGames?.call(games);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Login login)? login,
    TResult Function(SignUp login)? signUp,
    TResult Function(ForgotPassword email)? forgotPassword,
    TResult Function(ForgotPassword email)? resend,
    TResult Function(VerifyCode code, ResendCodeType type)? verifyCode,
    TResult Function(NewPassword newPassword)? newPassword,
    TResult Function(int id, AddOrRemove action)? addToGame,
    TResult Function()? getGameList,
    TResult Function(FavouriteGames games)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (addFavouriteGames != null) {
      return addFavouriteGames(games);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Login value) login,
    required TResult Function(_SignUp value) signUp,
    required TResult Function(_ForgotPassword value) forgotPassword,
    required TResult Function(_Resend value) resend,
    required TResult Function(_VerifyCode value) verifyCode,
    required TResult Function(_NewPassword value) newPassword,
    required TResult Function(_AddToGame value) addToGame,
    required TResult Function(_GetGameList value) getGameList,
    required TResult Function(_AddFavouriteGames value) addFavouriteGames,
  }) {
    return addFavouriteGames(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
  }) {
    return addFavouriteGames?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Login value)? login,
    TResult Function(_SignUp value)? signUp,
    TResult Function(_ForgotPassword value)? forgotPassword,
    TResult Function(_Resend value)? resend,
    TResult Function(_VerifyCode value)? verifyCode,
    TResult Function(_NewPassword value)? newPassword,
    TResult Function(_AddToGame value)? addToGame,
    TResult Function(_GetGameList value)? getGameList,
    TResult Function(_AddFavouriteGames value)? addFavouriteGames,
    required TResult orElse(),
  }) {
    if (addFavouriteGames != null) {
      return addFavouriteGames(this);
    }
    return orElse();
  }
}

abstract class _AddFavouriteGames implements SignInEvent {
  factory _AddFavouriteGames({required FavouriteGames games}) =
      _$_AddFavouriteGames;

  FavouriteGames get games;
  @JsonKey(ignore: true)
  _$AddFavouriteGamesCopyWith<_AddFavouriteGames> get copyWith =>
      throw _privateConstructorUsedError;
}
