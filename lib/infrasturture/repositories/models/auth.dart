import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'auth.g.dart';

abstract class Auth implements Built<Auth, AuthBuilder> {
  String? get email;

  String? get password;

  String? get token;

  @BuiltValueField(wireName: 'firebase_token')
  String? get fcmToken;

  Auth._();
  factory Auth([Function(AuthBuilder b) updates]) = _$Auth;

  static Serializer<Auth> get serializer => _$authSerializer;
}
