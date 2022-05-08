

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'confirm_email.g.dart';

abstract class ConfirmEmail implements Built<ConfirmEmail, ConfirmEmailBuilder> {

  @BuiltValueField(wireName: 'new_email')
  String? get newEmail;

  String? get code;


  ConfirmEmail._();
  factory ConfirmEmail([Function(ConfirmEmailBuilder b) updates]) = _$ConfirmEmail;

  static Serializer<ConfirmEmail> get serializer => _$confirmEmailSerializer;
}