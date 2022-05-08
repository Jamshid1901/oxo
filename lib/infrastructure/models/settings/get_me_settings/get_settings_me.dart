


import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_settings_me.g.dart';

abstract class General implements Built<General, GeneralBuilder> {


  String? get gender;

  @BuiltValueField(wireName: 'birthday')
  String? get dob;

  String? get email;

  @BuiltValueField(wireName: 'private_account')
  bool? get privateAccount;

  @BuiltValueField(wireName: 'lfg_search')
  bool? get lfgSearch;

  General._();
  factory General([Function(GeneralBuilder b) updates]) = _$General;

  static Serializer<General> get serializer => _$generalSerializer;
}
