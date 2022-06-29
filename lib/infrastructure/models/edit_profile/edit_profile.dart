import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'edit_profile.g.dart';



abstract class UserNameM implements Built<UserNameM, UserNameMBuilder> {

  @BuiltValueField(wireName: 'username')
  String get userName;

  UserNameM._();
  factory UserNameM([Function(UserNameMBuilder b) updates]) = _$UserNameM;

  static Serializer<UserNameM> get serializer => _$userNameMSerializer;
}

abstract class LogoutModel implements Built<LogoutModel, LogoutModelBuilder> {

  @BuiltValueField(wireName: 'fcm_token')
  String get fcm;

  LogoutModel._();
  factory LogoutModel([Function(LogoutModelBuilder b) updates]) = _$LogoutModel;

  static Serializer<LogoutModel> get serializer => _$logoutModelSerializer;
}


class ProfileM{
  final String userName;
  final String? bio;
  final String? link;
  final int? backgroundM;
  final int? avatarM;

  ProfileM({
    required this.userName,
    required this.bio,
    required this.link,
    required this.avatarM,
    required this.backgroundM,
  });


  Map<String, dynamic> toJson(ProfileM profileM){

    return {
      "username": profileM.userName,
      "link": profileM.link,
      "bio": profileM.bio,
      "avatar":profileM.avatarM,
      "background_photo": profileM.backgroundM,
    };
  }
}

class UserNameErrorModel{
  final String detail;

  UserNameErrorModel({ required this.detail});

  factory UserNameErrorModel.fromJson(Map<String, dynamic> json){
    return UserNameErrorModel(detail: json["detail"]);
  }
}


class ProfileModelUpdate{
  final String userName;
  final String? companyName;
  final String? companyPhone;
  final String? bio;
  final String? ein;
  final int? backgroundM;
  final int? avatarM;

  ProfileModelUpdate({
    required this.userName,
    required this.bio,
    required this.avatarM,
    required this.backgroundM,
    required this.companyName,
    required this.companyPhone,
    required this.ein,
  });


  Map<String, dynamic> toJson(ProfileModelUpdate profileM){

    return {
      "username": profileM.userName,
      "company_name":profileM.companyName,
      "company_phone":profileM.companyPhone,
      "bio": profileM.bio,
      "ein": profileM.ein,
      "avatar":profileM.avatarM,
      "background": profileM.backgroundM,
    };
  }
}
