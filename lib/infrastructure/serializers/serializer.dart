import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart';
import 'package:oxo/infrastructure/models/detail/detail.dart';
import 'package:oxo/infrastructure/models/edit_profile/edit_profile.dart';
import 'package:oxo/infrastructure/models/followers/followers_model.dart';
import 'package:oxo/infrastructure/models/image_upload_model/image_upload_model.dart';
import 'package:oxo/infrastructure/models/notification/notification_model.dart';
import 'package:oxo/infrastructure/models/notification_setting/notification_setting.dart';
import 'package:oxo/infrastructure/models/payment/payment.dart';
import 'package:oxo/infrastructure/models/profile/profile.dart';
import 'package:oxo/infrastructure/models/profile/profile_avatar.dart';
import 'package:oxo/infrastructure/models/profile/profile_background.dart';
import 'package:oxo/infrastructure/models/profile/user_search_history.dart';
import 'package:oxo/infrastructure/models/settings/change_email/confirm_email.dart';
import 'package:oxo/infrastructure/models/settings/change_email/new_email.dart';
import 'package:oxo/infrastructure/models/settings/get_me_settings/get_settings_me.dart';
import 'package:oxo/infrastructure/models/settings/password.dart';
import 'package:oxo/infrastructure/models/settings/put_general_info.dart';
import 'package:built_collection/built_collection.dart';


part 'serializer.g.dart';

@SerializersFor([
  //Auth
  Login,
  FirebaseToken,
  ForgotPassword,
  VerifyCode,
  NewPassword,
  GameList,
  FavouriteGames,
  SocialSignIn,
  SignUp,
  General,
  FollowersModel,
  Results,
  Avatar,
  UnFollowPostModel,
  Detail,
  PasswordEntity,
  NewEmail,
  ConfirmEmail,
  GeneralInfoEntity,
  ProfileAvatarModel,
  ProfileBackgroundModel,
  ProfileModel,
  ImageUploadModel,
  UserSearchHistoryModel,
  UserSearchHistoryResultModel,
  UserSearchHistoryPostModel,

  UserSearchHistoryPostModel,
  NotificationSetting,
  NotificationModel,
  NotificationResults,
  NotificationAvatar,

  UserNameM,
  ProfileM,

  Payment,
  PaymentListModel,
  PaymentResult,
  Payment,
  PaymentListModel,
  PaymentResult,
  CheckAccount,
  Link,
  Country,
  PrivacyPolicy
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
