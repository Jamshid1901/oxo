

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'new_email.g.dart';

abstract class NewEmail implements Built<NewEmail, NewEmailBuilder> {

  @BuiltValueField(wireName: 'new_email')
  String? get newEmail;


  NewEmail._();
  factory NewEmail([Function(NewEmailBuilder b) updates]) = _$NewEmail;

  static Serializer<NewEmail> get serializer => _$newEmailSerializer;
}