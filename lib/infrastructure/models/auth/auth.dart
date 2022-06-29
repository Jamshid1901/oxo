import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'auth.g.dart';

abstract class SendCode
    implements Built<SendCode, SendCodeBuilder> {
  @BuiltValueField(wireName: 'phone_number')
  String? get number;

  String? get type;

  SendCode._();
  factory SendCode([Function(SendCodeBuilder b) updates]) =
  _$SendCode;

  static Serializer<SendCode> get serializer =>
      _$sendCodeSerializer;
}



abstract class Login implements Built<Login, LoginBuilder> {
  @BuiltValueField(wireName: 'phone_number')
  String? get phone;

  String? get password;

  @BuiltValueField(wireName: 'fcm_token')
  String? get fcm;

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
  @BuiltValueField(wireName: 'phone_number')
  String? get number;

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

abstract class SignUp implements Built<SignUp, SignUpBuilder> {
  @BuiltValueField(wireName: 'profile_photo')
  String? get profileImage;
  @BuiltValueField(wireName: 'full_name')
  String? get name;
  @BuiltValueField(wireName: 'phone_number')
  String? get phone;
  @BuiltValueField(wireName: 'location_name')
  String? get locationName;
  @BuiltValueField(wireName: 'fcm_token')
  String? get fcmToken;
  @BuiltValueField(wireName: 'user_type')
  String? get type;
  Location? get location;
  String? get password;

  SignUp._();
  factory SignUp([Function(SignUpBuilder b) updates]) = _$SignUp;

  static Serializer<SignUp> get serializer => _$signUpSerializer;
}

abstract class Location implements Built<Location, LocationBuilder> {
  double? get lat;

  double? get long;

  Location._();
  factory Location([Function(LocationBuilder b) updates]) = _$Location;

  static Serializer<Location> get serializer => _$locationSerializer;
}

abstract class ResendCode implements Built<ResendCode, ResendCodeBuilder> {
  String? get email;
  @BuiltValueField(wireName: 'resend_type')
  String? get resendType;

  ResendCode._();
  factory ResendCode([Function(ResendCodeBuilder b) updates]) = _$ResendCode;

  static Serializer<ResendCode> get serializer => _$resendCodeSerializer;
}
