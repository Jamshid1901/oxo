import 'dart:io';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';

part 'profile.g.dart';

abstract class Profile implements Built<Profile, ProfileBuilder> {
  int get id;

  String get username;

  @BuiltValueField(wireName: 'full_name')
  String? get fullName;

  String? get avatar;

  String? get bio;

  int get following;

  int get followers;

  @BuiltValueField(wireName: 'is_verified')
  bool get isVerified;

  @BuiltValueField(wireName: 'you_followed')
  bool get youFollowed;

  @BuiltValueField(wireName: 'is_himself')
  bool get isHimself;

  @BuiltValueField(wireName: 'has_membership')
  bool get isMembership;

  @BuiltValueField(wireName: 'direct_question_rate')
  String get rate;

  Profile._();

  factory Profile([Function(ProfileBuilder b) updates]) = _$Profile;

  static Serializer<Profile> get serializer => _$profileSerializer;
}

abstract class Follow implements Built<Follow, FollowBuilder> {
  @BuiltValueField(wireName: 'followed_to')
  int? get followId;

  Follow._();

  factory Follow([Function(FollowBuilder b) updates]) = _$Follow;

  static Serializer<Follow> get serializer => _$followSerializer;
}

abstract class SignOut implements Built<SignOut, SignOutBuilder> {
  @BuiltValueField(wireName: 'firebase_token')
  String? get fcmToken;

  SignOut._();

  factory SignOut([Function(SignOutBuilder b) updates]) = _$SignOut;

  static Serializer<SignOut> get serializer => _$signOutSerializer;
}

abstract class EditUsername
    implements Built<EditUsername, EditUsernameBuilder> {
  String? get username;

  String? get bio;

  @BuiltValueField(wireName: 'full_name')
  String? get fullName;

  EditUsername._();

  factory EditUsername([Function(EditUsernameBuilder b) updates]) =
      _$EditUsername;

  static Serializer<EditUsername> get serializer => _$editUsernameSerializer;
}

abstract class ResetPassword
    implements Built<ResetPassword, ResetPasswordBuilder> {
  @BuiltValueField(wireName: 'old_password')
  String? get oldPassword;

  @BuiltValueField(wireName: 'new_password')
  String? get newPassword;

  ResetPassword._();

  factory ResetPassword([Function(ResetPasswordBuilder b) updates]) =
      _$ResetPassword;

  static Serializer<ResetPassword> get serializer => _$resetPasswordSerializer;
}

abstract class ForgetPasswordConfirm
    implements Built<ForgetPasswordConfirm, ForgetPasswordConfirmBuilder> {
  @BuiltValueField(wireName: 'code')
  String? get code;

  @BuiltValueField(wireName: 'new_password')
  String? get newPassword;

  ForgetPasswordConfirm._();

  factory ForgetPasswordConfirm([Function(ForgetPasswordConfirmBuilder b) updates]) =
  _$ForgetPasswordConfirm;

  static Serializer<ForgetPasswordConfirm> get serializer => _$forgetPasswordConfirmSerializer;
}

abstract class SetRate implements Built<SetRate, SetRateBuilder> {
  double get rate;

  SetRate._();

  factory SetRate([Function(SetRateBuilder b) updates]) = _$SetRate;

  static Serializer<SetRate> get serializer => _$setRateSerializer;
}

abstract class Links implements Built<Links, LinksBuilder> {
  String? get type;

  String? get url;

  Links._();

  factory Links([Function(LinksBuilder b) updates]) = _$Links;

  static Serializer<Links> get serializer => _$linksSerializer;
}

abstract class Verification
    implements Built<Verification, VerificationBuilder> {
  int get document;

  BuiltList<Links>? get link;

  Verification._();

  factory Verification([Function(VerificationBuilder b) updates]) =
      _$Verification;

  static Serializer<Verification> get serializer => _$verificationSerializer;
}

abstract class ChangeProfile
    implements Built<ChangeProfile, ChangeProfileBuilder> {
  @BuiltValueField(wireName: 'detail')
  String? get image;

  ChangeProfile._();

  factory ChangeProfile([Function(ChangeProfileBuilder b) updates]) =
      _$ChangeProfile;

  static Serializer<ChangeProfile> get serializer => _$changeProfileSerializer;
}

abstract class UploadFile implements Built<UploadFile, UploadFileBuilder> {
  @BuiltValueField(wireName: 'document_type')
  String? get image;

  File? get file;

  UploadFile._();

  factory UploadFile([Function(UploadFileBuilder b) updates]) = _$UploadFile;

  static Serializer<UploadFile> get serializer => _$uploadFileSerializer;
}

abstract class ChooseFileModel
    implements Built<ChooseFileModel, ChooseFileModelBuilder> {
  int? get id;

  @BuiltValueField(wireName: 'document_type')
  String? get image;

  ChooseFileModel._();

  factory ChooseFileModel([Function(ChooseFileModelBuilder b) updates]) =
      _$ChooseFileModel;

  static Serializer<ChooseFileModel> get serializer =>
      _$chooseFileModelSerializer;
}

abstract class AccountStatusModel
    implements Built<AccountStatusModel, AccountStatusModelBuilder> {

  @BuiltValueField(wireName: 'is_onboarding_completed')
  bool? get status;

  AccountStatusModel._();

  factory AccountStatusModel([Function(AccountStatusModelBuilder b) updates]) =
  _$AccountStatusModel;

  static Serializer<AccountStatusModel> get serializer =>
      _$accountStatusModelSerializer;
}


abstract class OnboardModel
    implements Built<OnboardModel, OnboardModelBuilder> {

  @BuiltValueField(wireName: 'detail')
  String get link;

  OnboardModel._();

  factory OnboardModel([Function(OnboardModelBuilder b) updates]) =
  _$OnboardModel;

  static Serializer<OnboardModel> get serializer =>
      _$onboardModelSerializer;
}

abstract class AddCardModel
    implements Built<AddCardModel, AddCardModelBuilder> {

  String get number;

  String get cvc;

  @BuiltValueField(wireName: 'exp_month')
  String get month;

  @BuiltValueField(wireName: 'exp_year')
  String get year;

  @BuiltValueField(wireName: 'card_name')
  String get name;

  @BuiltValueField(wireName: 'transaction_type')
  String get type;

  AddCardModel._();

  factory AddCardModel([Function(AddCardModelBuilder b) updates]) =
  _$AddCardModel;

  static Serializer<AddCardModel> get serializer =>
      _$addCardModelSerializer;
}

abstract class CardModel
    implements Built<CardModel, CardModelBuilder> {

  int get id;

  @BuiltValueField(wireName: 'last4')
  String get number;

  String get brand;

  @BuiltValueField(wireName: 'default_payment_card')
  bool get defaultCard;

  CardModel._();

  factory CardModel([Function(CardModelBuilder b) updates]) =
  _$CardModel;

  static Serializer<CardModel> get serializer =>
      _$cardModelSerializer;
}

abstract class CardList implements Built<CardList, CardListBuilder> {

  BuiltList<CardModel>? get cards;

  CardList._();
  factory CardList([Function(CardListBuilder b) updates]) = _$CardList;

  static Serializer<CardList> get serializer => _$cardListSerializer;
}

abstract class BuyDirectQ implements Built<BuyDirectQ, BuyDirectQBuilder> {

  int get user;


  BuyDirectQ._();
  factory BuyDirectQ([Function(BuyDirectQBuilder b) updates]) = _$BuyDirectQ;

  static Serializer<BuyDirectQ> get serializer => _$buyDirectQSerializer;
}

abstract class UserBlock implements Built<UserBlock, UserBlockBuilder> {

  @BuiltValueField(wireName: 'blocked_user')
  int get user;


  UserBlock._();
  factory UserBlock([Function(UserBlockBuilder b) updates]) = _$UserBlock;

  static Serializer<UserBlock> get serializer => _$userBlockSerializer;
}


abstract class ReportCategory implements Built<ReportCategory, ReportCategoryBuilder> {

  int get id;

  String get title;

  ReportCategory._();
  factory ReportCategory([Function(ReportCategoryBuilder b) updates]) = _$ReportCategory;

  static Serializer<ReportCategory> get serializer => _$reportCategorySerializer;
}

abstract class GetCategory implements Built<GetCategory, GetCategoryBuilder> {


  BuiltList<ReportCategory>? get results;

  GetCategory._();
  factory GetCategory([Function(GetCategoryBuilder b) updates]) = _$GetCategory;

  static Serializer<GetCategory> get serializer => _$getCategorySerializer;
}


abstract class ReportUser implements Built<ReportUser, ReportUserBuilder> {

  @BuiltValueField(wireName: 'reported_user')
  int get id;

  int get category;

  String get reason;

  ReportUser._();
  factory ReportUser([Function(ReportUserBuilder b) updates]) = _$ReportUser;

  static Serializer<ReportUser> get serializer => _$reportUserSerializer;
}

