import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'put_general_info.g.dart';

abstract class GeneralInfoEntity  implements Built<GeneralInfoEntity, GeneralInfoEntityBuilder> {

  String? get gender;

  String? get birthday;


  GeneralInfoEntity._();
  factory GeneralInfoEntity([Function(GeneralInfoEntityBuilder b) updates]) = _$GeneralInfoEntity;

  static Serializer<GeneralInfoEntity> get serializer => _$generalInfoEntitySerializer;
}

abstract class PrivacyPolicy  implements Built<PrivacyPolicy,PrivacyPolicyBuilder> {

  @BuiltValueField(wireName: 'privacy_policy')
  String? get privacyPolicy;

  @BuiltValueField(wireName: 'terms_conditions')
  String? get termsConditions;


  PrivacyPolicy._();
  factory PrivacyPolicy([Function(PrivacyPolicyBuilder b) updates]) = _$PrivacyPolicy;

  static Serializer<PrivacyPolicy> get serializer => _$privacyPolicySerializer;
}