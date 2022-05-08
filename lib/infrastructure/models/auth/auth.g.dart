// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Login> _$loginSerializer = new _$LoginSerializer();
Serializer<FirebaseToken> _$firebaseTokenSerializer =
    new _$FirebaseTokenSerializer();
Serializer<SocialSignIn> _$socialSignInSerializer =
    new _$SocialSignInSerializer();
Serializer<ForgotPassword> _$forgotPasswordSerializer =
    new _$ForgotPasswordSerializer();
Serializer<VerifyCode> _$verifyCodeSerializer = new _$VerifyCodeSerializer();
Serializer<NewPassword> _$newPasswordSerializer = new _$NewPasswordSerializer();
Serializer<GameImage> _$gameImageSerializer = new _$GameImageSerializer();
Serializer<Game> _$gameSerializer = new _$GameSerializer();
Serializer<GameList> _$gameListSerializer = new _$GameListSerializer();
Serializer<FavouriteGames> _$favouriteGamesSerializer =
    new _$FavouriteGamesSerializer();
Serializer<SignUp> _$signUpSerializer = new _$SignUpSerializer();
Serializer<ResendCode> _$resendCodeSerializer = new _$ResendCodeSerializer();

class _$LoginSerializer implements StructuredSerializer<Login> {
  @override
  final Iterable<Type> types = const [Login, _$Login];
  @override
  final String wireName = 'Login';

  @override
  Iterable<Object?> serialize(Serializers serializers, Login object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accessToken;
    if (value != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refreshToken;
    if (value != null) {
      result
        ..add('refresh_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Login deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'access_token':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'refresh_token':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$FirebaseTokenSerializer implements StructuredSerializer<FirebaseToken> {
  @override
  final Iterable<Type> types = const [FirebaseToken, _$FirebaseToken];
  @override
  final String wireName = 'FirebaseToken';

  @override
  Iterable<Object?> serialize(Serializers serializers, FirebaseToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.firebaseToken;
    if (value != null) {
      result
        ..add('firebase_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FirebaseToken deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FirebaseTokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'firebase_token':
          result.firebaseToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$SocialSignInSerializer implements StructuredSerializer<SocialSignIn> {
  @override
  final Iterable<Type> types = const [SocialSignIn, _$SocialSignIn];
  @override
  final String wireName = 'SocialSignIn';

  @override
  Iterable<Object?> serialize(Serializers serializers, SocialSignIn object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.accessToken;
    if (value != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.socialNetwork;
    if (value != null) {
      result
        ..add('social_network')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refreshToken;
    if (value != null) {
      result
        ..add('refresh_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isRegistered;
    if (value != null) {
      result
        ..add('is_register')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  SocialSignIn deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SocialSignInBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'access_token':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'social_network':
          result.socialNetwork = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'refresh_token':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'is_register':
          result.isRegistered = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
      }
    }

    return result.build();
  }
}

class _$ForgotPasswordSerializer
    implements StructuredSerializer<ForgotPassword> {
  @override
  final Iterable<Type> types = const [ForgotPassword, _$ForgotPassword];
  @override
  final String wireName = 'ForgotPassword';

  @override
  Iterable<Object?> serialize(Serializers serializers, ForgotPassword object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ForgotPassword deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForgotPasswordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$VerifyCodeSerializer implements StructuredSerializer<VerifyCode> {
  @override
  final Iterable<Type> types = const [VerifyCode, _$VerifyCode];
  @override
  final String wireName = 'VerifyCode';

  @override
  Iterable<Object?> serialize(Serializers serializers, VerifyCode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
    value = object.accessToken;
    if (value != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refreshToken;
    if (value != null) {
      result
        ..add('refresh_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  VerifyCode deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VerifyCodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'access_token':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'refresh_token':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$NewPasswordSerializer implements StructuredSerializer<NewPassword> {
  @override
  final Iterable<Type> types = const [NewPassword, _$NewPassword];
  @override
  final String wireName = 'NewPassword';

  @override
  Iterable<Object?> serialize(Serializers serializers, NewPassword object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accessToken;
    if (value != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refreshToken;
    if (value != null) {
      result
        ..add('refresh_token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  NewPassword deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewPasswordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'access_token':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'refresh_token':
          result.refreshToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GameImageSerializer implements StructuredSerializer<GameImage> {
  @override
  final Iterable<Type> types = const [GameImage, _$GameImage];
  @override
  final String wireName = 'GameImage';

  @override
  Iterable<Object?> serialize(Serializers serializers, GameImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.file;
    if (value != null) {
      result
        ..add('file')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.format;
    if (value != null) {
      result
        ..add('format')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GameImage deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'file':
          result.file = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'format':
          result.format = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GameSerializer implements StructuredSerializer<Game> {
  @override
  final Iterable<Type> types = const [Game, _$Game];
  @override
  final String wireName = 'Game';

  @override
  Iterable<Object?> serialize(Serializers serializers, Game object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(GameImage)));
    }
    return result;
  }

  @override
  Game deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo':
          result.image.replace(serializers.deserialize(value,
              specifiedType: const FullType(GameImage))! as GameImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GameListSerializer implements StructuredSerializer<GameList> {
  @override
  final Iterable<Type> types = const [GameList, _$GameList];
  @override
  final String wireName = 'GameList';

  @override
  Iterable<Object?> serialize(Serializers serializers, GameList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.count;
    if (value != null) {
      result
        ..add('count')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.previous;
    if (value != null) {
      result
        ..add('previous')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.next;
    if (value != null) {
      result
        ..add('next')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.games;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Game)])));
    }
    return result;
  }

  @override
  GameList deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GameListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'previous':
          result.previous = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'next':
          result.next = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'results':
          result.games.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Game)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$FavouriteGamesSerializer
    implements StructuredSerializer<FavouriteGames> {
  @override
  final Iterable<Type> types = const [FavouriteGames, _$FavouriteGames];
  @override
  final String wireName = 'FavouriteGames';

  @override
  Iterable<Object?> serialize(Serializers serializers, FavouriteGames object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.games;
    if (value != null) {
      result
        ..add('game_ids')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  FavouriteGames deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavouriteGamesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'game_ids':
          result.games.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$SignUpSerializer implements StructuredSerializer<SignUp> {
  @override
  final Iterable<Type> types = const [SignUp, _$SignUp];
  @override
  final String wireName = 'SignUp';

  @override
  Iterable<Object?> serialize(Serializers serializers, SignUp object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.username;
    if (value != null) {
      result
        ..add('username')
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
    value = object.birthday;
    if (value != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SignUp deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SignUpBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$ResendCodeSerializer implements StructuredSerializer<ResendCode> {
  @override
  final Iterable<Type> types = const [ResendCode, _$ResendCode];
  @override
  final String wireName = 'ResendCode';

  @override
  Iterable<Object?> serialize(Serializers serializers, ResendCode object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.resendType;
    if (value != null) {
      result
        ..add('resend_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ResendCode deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResendCodeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'resend_type':
          result.resendType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$Login extends Login {
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  factory _$Login([void Function(LoginBuilder)? updates]) =>
      (new LoginBuilder()..update(updates)).build();

  _$Login._({this.email, this.password, this.accessToken, this.refreshToken})
      : super._();

  @override
  Login rebuild(void Function(LoginBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginBuilder toBuilder() => new LoginBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Login &&
        email == other.email &&
        password == other.password &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, email.hashCode), password.hashCode),
            accessToken.hashCode),
        refreshToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Login')
          ..add('email', email)
          ..add('password', password)
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class LoginBuilder implements Builder<Login, LoginBuilder> {
  _$Login? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  LoginBuilder();

  LoginBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Login other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Login;
  }

  @override
  void update(void Function(LoginBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Login build() {
    final _$result = _$v ??
        new _$Login._(
            email: email,
            password: password,
            accessToken: accessToken,
            refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

class _$FirebaseToken extends FirebaseToken {
  @override
  final String? firebaseToken;

  factory _$FirebaseToken([void Function(FirebaseTokenBuilder)? updates]) =>
      (new FirebaseTokenBuilder()..update(updates)).build();

  _$FirebaseToken._({this.firebaseToken}) : super._();

  @override
  FirebaseToken rebuild(void Function(FirebaseTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FirebaseTokenBuilder toBuilder() => new FirebaseTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FirebaseToken && firebaseToken == other.firebaseToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, firebaseToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FirebaseToken')
          ..add('firebaseToken', firebaseToken))
        .toString();
  }
}

class FirebaseTokenBuilder
    implements Builder<FirebaseToken, FirebaseTokenBuilder> {
  _$FirebaseToken? _$v;

  String? _firebaseToken;
  String? get firebaseToken => _$this._firebaseToken;
  set firebaseToken(String? firebaseToken) =>
      _$this._firebaseToken = firebaseToken;

  FirebaseTokenBuilder();

  FirebaseTokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _firebaseToken = $v.firebaseToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FirebaseToken other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FirebaseToken;
  }

  @override
  void update(void Function(FirebaseTokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FirebaseToken build() {
    final _$result = _$v ?? new _$FirebaseToken._(firebaseToken: firebaseToken);
    replace(_$result);
    return _$result;
  }
}

class _$SocialSignIn extends SocialSignIn {
  @override
  final String? accessToken;
  @override
  final String? socialNetwork;
  @override
  final String? refreshToken;
  @override
  final bool? isRegistered;

  factory _$SocialSignIn([void Function(SocialSignInBuilder)? updates]) =>
      (new SocialSignInBuilder()..update(updates)).build();

  _$SocialSignIn._(
      {this.accessToken,
      this.socialNetwork,
      this.refreshToken,
      this.isRegistered})
      : super._();

  @override
  SocialSignIn rebuild(void Function(SocialSignInBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SocialSignInBuilder toBuilder() => new SocialSignInBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SocialSignIn &&
        accessToken == other.accessToken &&
        socialNetwork == other.socialNetwork &&
        refreshToken == other.refreshToken &&
        isRegistered == other.isRegistered;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, accessToken.hashCode), socialNetwork.hashCode),
            refreshToken.hashCode),
        isRegistered.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SocialSignIn')
          ..add('accessToken', accessToken)
          ..add('socialNetwork', socialNetwork)
          ..add('refreshToken', refreshToken)
          ..add('isRegistered', isRegistered))
        .toString();
  }
}

class SocialSignInBuilder
    implements Builder<SocialSignIn, SocialSignInBuilder> {
  _$SocialSignIn? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _socialNetwork;
  String? get socialNetwork => _$this._socialNetwork;
  set socialNetwork(String? socialNetwork) =>
      _$this._socialNetwork = socialNetwork;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  bool? _isRegistered;
  bool? get isRegistered => _$this._isRegistered;
  set isRegistered(bool? isRegistered) => _$this._isRegistered = isRegistered;

  SocialSignInBuilder();

  SocialSignInBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _socialNetwork = $v.socialNetwork;
      _refreshToken = $v.refreshToken;
      _isRegistered = $v.isRegistered;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SocialSignIn other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SocialSignIn;
  }

  @override
  void update(void Function(SocialSignInBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SocialSignIn build() {
    final _$result = _$v ??
        new _$SocialSignIn._(
            accessToken: accessToken,
            socialNetwork: socialNetwork,
            refreshToken: refreshToken,
            isRegistered: isRegistered);
    replace(_$result);
    return _$result;
  }
}

class _$ForgotPassword extends ForgotPassword {
  @override
  final String? email;

  factory _$ForgotPassword([void Function(ForgotPasswordBuilder)? updates]) =>
      (new ForgotPasswordBuilder()..update(updates)).build();

  _$ForgotPassword._({this.email}) : super._();

  @override
  ForgotPassword rebuild(void Function(ForgotPasswordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForgotPasswordBuilder toBuilder() =>
      new ForgotPasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForgotPassword && email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc(0, email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ForgotPassword')..add('email', email))
        .toString();
  }
}

class ForgotPasswordBuilder
    implements Builder<ForgotPassword, ForgotPasswordBuilder> {
  _$ForgotPassword? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  ForgotPasswordBuilder();

  ForgotPasswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForgotPassword other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForgotPassword;
  }

  @override
  void update(void Function(ForgotPasswordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ForgotPassword build() {
    final _$result = _$v ?? new _$ForgotPassword._(email: email);
    replace(_$result);
    return _$result;
  }
}

class _$VerifyCode extends VerifyCode {
  @override
  final String? email;
  @override
  final String? code;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  factory _$VerifyCode([void Function(VerifyCodeBuilder)? updates]) =>
      (new VerifyCodeBuilder()..update(updates)).build();

  _$VerifyCode._({this.email, this.code, this.accessToken, this.refreshToken})
      : super._();

  @override
  VerifyCode rebuild(void Function(VerifyCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyCodeBuilder toBuilder() => new VerifyCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyCode &&
        email == other.email &&
        code == other.code &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, email.hashCode), code.hashCode), accessToken.hashCode),
        refreshToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VerifyCode')
          ..add('email', email)
          ..add('code', code)
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class VerifyCodeBuilder implements Builder<VerifyCode, VerifyCodeBuilder> {
  _$VerifyCode? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  VerifyCodeBuilder();

  VerifyCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _code = $v.code;
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifyCode;
  }

  @override
  void update(void Function(VerifyCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VerifyCode build() {
    final _$result = _$v ??
        new _$VerifyCode._(
            email: email,
            code: code,
            accessToken: accessToken,
            refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

class _$NewPassword extends NewPassword {
  @override
  final String? email;
  @override
  final String? code;
  @override
  final String? password;
  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  factory _$NewPassword([void Function(NewPasswordBuilder)? updates]) =>
      (new NewPasswordBuilder()..update(updates)).build();

  _$NewPassword._(
      {this.email,
      this.code,
      this.password,
      this.accessToken,
      this.refreshToken})
      : super._();

  @override
  NewPassword rebuild(void Function(NewPasswordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewPasswordBuilder toBuilder() => new NewPasswordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewPassword &&
        email == other.email &&
        code == other.code &&
        password == other.password &&
        accessToken == other.accessToken &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, email.hashCode), code.hashCode), password.hashCode),
            accessToken.hashCode),
        refreshToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NewPassword')
          ..add('email', email)
          ..add('code', code)
          ..add('password', password)
          ..add('accessToken', accessToken)
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class NewPasswordBuilder implements Builder<NewPassword, NewPasswordBuilder> {
  _$NewPassword? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  NewPasswordBuilder();

  NewPasswordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _code = $v.code;
      _password = $v.password;
      _accessToken = $v.accessToken;
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewPassword other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewPassword;
  }

  @override
  void update(void Function(NewPasswordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NewPassword build() {
    final _$result = _$v ??
        new _$NewPassword._(
            email: email,
            code: code,
            password: password,
            accessToken: accessToken,
            refreshToken: refreshToken);
    replace(_$result);
    return _$result;
  }
}

class _$GameImage extends GameImage {
  @override
  final int? id;
  @override
  final String? file;
  @override
  final String? format;
  @override
  final String? name;

  factory _$GameImage([void Function(GameImageBuilder)? updates]) =>
      (new GameImageBuilder()..update(updates)).build();

  _$GameImage._({this.id, this.file, this.format, this.name}) : super._();

  @override
  GameImage rebuild(void Function(GameImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameImageBuilder toBuilder() => new GameImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameImage &&
        id == other.id &&
        file == other.file &&
        format == other.format &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), file.hashCode), format.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GameImage')
          ..add('id', id)
          ..add('file', file)
          ..add('format', format)
          ..add('name', name))
        .toString();
  }
}

class GameImageBuilder implements Builder<GameImage, GameImageBuilder> {
  _$GameImage? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  String? _format;
  String? get format => _$this._format;
  set format(String? format) => _$this._format = format;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GameImageBuilder();

  GameImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _file = $v.file;
      _format = $v.format;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameImage;
  }

  @override
  void update(void Function(GameImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GameImage build() {
    final _$result = _$v ??
        new _$GameImage._(id: id, file: file, format: format, name: name);
    replace(_$result);
    return _$result;
  }
}

class _$Game extends Game {
  @override
  final int? id;
  @override
  final String? name;
  @override
  final GameImage? image;

  factory _$Game([void Function(GameBuilder)? updates]) =>
      (new GameBuilder()..update(updates)).build();

  _$Game._({this.id, this.name, this.image}) : super._();

  @override
  Game rebuild(void Function(GameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameBuilder toBuilder() => new GameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Game &&
        id == other.id &&
        name == other.name &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Game')
          ..add('id', id)
          ..add('name', name)
          ..add('image', image))
        .toString();
  }
}

class GameBuilder implements Builder<Game, GameBuilder> {
  _$Game? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  GameImageBuilder? _image;
  GameImageBuilder get image => _$this._image ??= new GameImageBuilder();
  set image(GameImageBuilder? image) => _$this._image = image;

  GameBuilder();

  GameBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _image = $v.image?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Game other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Game;
  }

  @override
  void update(void Function(GameBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Game build() {
    _$Game _$result;
    try {
      _$result =
          _$v ?? new _$Game._(id: id, name: name, image: _image?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'image';
        _image?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Game', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GameList extends GameList {
  @override
  final int? count;
  @override
  final String? previous;
  @override
  final String? next;
  @override
  final BuiltList<Game>? games;

  factory _$GameList([void Function(GameListBuilder)? updates]) =>
      (new GameListBuilder()..update(updates)).build();

  _$GameList._({this.count, this.previous, this.next, this.games}) : super._();

  @override
  GameList rebuild(void Function(GameListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GameListBuilder toBuilder() => new GameListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GameList &&
        count == other.count &&
        previous == other.previous &&
        next == other.next &&
        games == other.games;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, count.hashCode), previous.hashCode), next.hashCode),
        games.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GameList')
          ..add('count', count)
          ..add('previous', previous)
          ..add('next', next)
          ..add('games', games))
        .toString();
  }
}

class GameListBuilder implements Builder<GameList, GameListBuilder> {
  _$GameList? _$v;

  int? _count;
  int? get count => _$this._count;
  set count(int? count) => _$this._count = count;

  String? _previous;
  String? get previous => _$this._previous;
  set previous(String? previous) => _$this._previous = previous;

  String? _next;
  String? get next => _$this._next;
  set next(String? next) => _$this._next = next;

  ListBuilder<Game>? _games;
  ListBuilder<Game> get games => _$this._games ??= new ListBuilder<Game>();
  set games(ListBuilder<Game>? games) => _$this._games = games;

  GameListBuilder();

  GameListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _previous = $v.previous;
      _next = $v.next;
      _games = $v.games?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GameList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GameList;
  }

  @override
  void update(void Function(GameListBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GameList build() {
    _$GameList _$result;
    try {
      _$result = _$v ??
          new _$GameList._(
              count: count,
              previous: previous,
              next: next,
              games: _games?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'games';
        _games?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GameList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FavouriteGames extends FavouriteGames {
  @override
  final BuiltList<int>? games;

  factory _$FavouriteGames([void Function(FavouriteGamesBuilder)? updates]) =>
      (new FavouriteGamesBuilder()..update(updates)).build();

  _$FavouriteGames._({this.games}) : super._();

  @override
  FavouriteGames rebuild(void Function(FavouriteGamesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavouriteGamesBuilder toBuilder() =>
      new FavouriteGamesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavouriteGames && games == other.games;
  }

  @override
  int get hashCode {
    return $jf($jc(0, games.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavouriteGames')..add('games', games))
        .toString();
  }
}

class FavouriteGamesBuilder
    implements Builder<FavouriteGames, FavouriteGamesBuilder> {
  _$FavouriteGames? _$v;

  ListBuilder<int>? _games;
  ListBuilder<int> get games => _$this._games ??= new ListBuilder<int>();
  set games(ListBuilder<int>? games) => _$this._games = games;

  FavouriteGamesBuilder();

  FavouriteGamesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _games = $v.games?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavouriteGames other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FavouriteGames;
  }

  @override
  void update(void Function(FavouriteGamesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavouriteGames build() {
    _$FavouriteGames _$result;
    try {
      _$result = _$v ?? new _$FavouriteGames._(games: _games?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'games';
        _games?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FavouriteGames', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$SignUp extends SignUp {
  @override
  final String? username;
  @override
  final String? email;
  @override
  final String? birthday;
  @override
  final String? password;

  factory _$SignUp([void Function(SignUpBuilder)? updates]) =>
      (new SignUpBuilder()..update(updates)).build();

  _$SignUp._({this.username, this.email, this.birthday, this.password})
      : super._();

  @override
  SignUp rebuild(void Function(SignUpBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignUpBuilder toBuilder() => new SignUpBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignUp &&
        username == other.username &&
        email == other.email &&
        birthday == other.birthday &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, username.hashCode), email.hashCode), birthday.hashCode),
        password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignUp')
          ..add('username', username)
          ..add('email', email)
          ..add('birthday', birthday)
          ..add('password', password))
        .toString();
  }
}

class SignUpBuilder implements Builder<SignUp, SignUpBuilder> {
  _$SignUp? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  SignUpBuilder();

  SignUpBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _email = $v.email;
      _birthday = $v.birthday;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignUp other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignUp;
  }

  @override
  void update(void Function(SignUpBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignUp build() {
    final _$result = _$v ??
        new _$SignUp._(
            username: username,
            email: email,
            birthday: birthday,
            password: password);
    replace(_$result);
    return _$result;
  }
}

class _$ResendCode extends ResendCode {
  @override
  final String? email;
  @override
  final String? resendType;

  factory _$ResendCode([void Function(ResendCodeBuilder)? updates]) =>
      (new ResendCodeBuilder()..update(updates)).build();

  _$ResendCode._({this.email, this.resendType}) : super._();

  @override
  ResendCode rebuild(void Function(ResendCodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResendCodeBuilder toBuilder() => new ResendCodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResendCode &&
        email == other.email &&
        resendType == other.resendType;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), resendType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ResendCode')
          ..add('email', email)
          ..add('resendType', resendType))
        .toString();
  }
}

class ResendCodeBuilder implements Builder<ResendCode, ResendCodeBuilder> {
  _$ResendCode? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _resendType;
  String? get resendType => _$this._resendType;
  set resendType(String? resendType) => _$this._resendType = resendType;

  ResendCodeBuilder();

  ResendCodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _resendType = $v.resendType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResendCode other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResendCode;
  }

  @override
  void update(void Function(ResendCodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ResendCode build() {
    final _$result =
        _$v ?? new _$ResendCode._(email: email, resendType: resendType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
