import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'password.g.dart';

abstract class PasswordEntity  implements Built<PasswordEntity, PasswordEntityBuilder> {

  @BuiltValueField(wireName: 'old_password')
  String? get oldPassword;

  @BuiltValueField(wireName: 'new_password')
  String? get newPassword;


  PasswordEntity._();
  factory PasswordEntity([Function(PasswordEntityBuilder b) updates]) = _$PasswordEntity;

  static Serializer<PasswordEntity> get serializer => _$passwordEntitySerializer;
}