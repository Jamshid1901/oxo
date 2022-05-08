import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'auth.g.dart';

abstract class Login implements Built<Login, LoginBuilder> {
  String? get email;

  String? get password;

  @BuiltValueField(wireName: 'access_token')
  String? get accessToken;

  @BuiltValueField(wireName: 'refresh_token')
  String? get refreshToken;

  Login._();
  factory Login([Function(LoginBuilder b) updates]) = _$Login;

  static Serializer<Login> get serializer => _$loginSerializer;
}

abstract class FirebaseToken
    implements Built<FirebaseToken, FirebaseTokenBuilder> {
  @BuiltValueField(wireName: 'firebase_token')
  String? get firebaseToken;

  FirebaseToken._();
  factory FirebaseToken([Function(FirebaseTokenBuilder b) updates]) =
      _$FirebaseToken;

  static Serializer<FirebaseToken> get serializer => _$firebaseTokenSerializer;
}

abstract class SocialSignIn
    implements Built<SocialSignIn, SocialSignInBuilder> {
  @BuiltValueField(wireName: 'access_token')
  String? get accessToken;

  @BuiltValueField(wireName: 'social_network')
  String? get socialNetwork;

  @BuiltValueField(wireName: 'refresh_token')
  String? get refreshToken;

  @BuiltValueField(wireName: 'is_register')
  bool? get isRegistered;

  SocialSignIn._();
  factory SocialSignIn([Function(SocialSignInBuilder b) updates]) =
      _$SocialSignIn;

  static Serializer<SocialSignIn> get serializer => _$socialSignInSerializer;
}

abstract class ForgotPassword
    implements Built<ForgotPassword, ForgotPasswordBuilder> {
  String? get email;

  ForgotPassword._();
  factory ForgotPassword([Function(ForgotPasswordBuilder b) updates]) =
      _$ForgotPassword;

  static Serializer<ForgotPassword> get serializer =>
      _$forgotPasswordSerializer;
}

abstract class VerifyCode implements Built<VerifyCode, VerifyCodeBuilder> {
  String? get email;
  String? get code;

  @BuiltValueField(wireName: 'access_token')
  String? get accessToken;

  @BuiltValueField(wireName: 'refresh_token')
  String? get refreshToken;

  VerifyCode._();
  factory VerifyCode([Function(VerifyCodeBuilder b) updates]) = _$VerifyCode;

  static Serializer<VerifyCode> get serializer => _$verifyCodeSerializer;
}

abstract class NewPassword implements Built<NewPassword, NewPasswordBuilder> {
  String? get email;
  String? get code;
  String? get password;

  @BuiltValueField(wireName: 'access_token')
  String? get accessToken;

  @BuiltValueField(wireName: 'refresh_token')
  String? get refreshToken;

  NewPassword._();
  factory NewPassword([Function(NewPasswordBuilder b) updates]) = _$NewPassword;

  static Serializer<NewPassword> get serializer => _$newPasswordSerializer;
}

abstract class GameImage implements Built<GameImage, GameImageBuilder> {
  int? get id;
  String? get file;
  String? get format;
  String? get name;

  GameImage._();
  factory GameImage([Function(GameImageBuilder b) updates]) = _$GameImage;

  static Serializer<GameImage> get serializer => _$gameImageSerializer;
}

abstract class Game implements Built<Game, GameBuilder> {
  int? get id;
  String? get name;
  @BuiltValueField(wireName: 'photo')
  GameImage? get image;

  Game._();
  factory Game([Function(GameBuilder b) updates]) = _$Game;

  static Serializer<Game> get serializer => _$gameSerializer;
}

abstract class GameList implements Built<GameList, GameListBuilder> {
  int? get count;
  String? get previous;
  String? get next;
  @BuiltValueField(wireName: 'results')
  BuiltList<Game>? get games;

  GameList._();
  factory GameList([Function(GameListBuilder b) updates]) = _$GameList;

  static Serializer<GameList> get serializer => _$gameListSerializer;
}

abstract class FavouriteGames
    implements Built<FavouriteGames, FavouriteGamesBuilder> {
  @BuiltValueField(wireName: 'game_ids')
  BuiltList<int>? get games;

  FavouriteGames._();
  factory FavouriteGames([Function(FavouriteGamesBuilder b) updates]) =
      _$FavouriteGames;

  static Serializer<FavouriteGames> get serializer =>
      _$favouriteGamesSerializer;
}

abstract class SignUp implements Built<SignUp, SignUpBuilder> {
  String? get username;
  String? get email;
  String? get birthday;
  String? get password;

  SignUp._();
  factory SignUp([Function(SignUpBuilder b) updates]) = _$SignUp;

  static Serializer<SignUp> get serializer => _$signUpSerializer;
}

abstract class ResendCode implements Built<ResendCode, ResendCodeBuilder> {
  String? get email;
  @BuiltValueField(wireName: 'resend_type')
  String? get resendType;

  ResendCode._();
  factory ResendCode([Function(ResendCodeBuilder b) updates]) = _$ResendCode;

  static Serializer<ResendCode> get serializer => _$resendCodeSerializer;
}
