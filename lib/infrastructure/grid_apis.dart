import 'package:chopper/chopper.dart';
import 'package:built_collection/built_collection.dart';

import 'built_value_converter.dart';
import 'interceptors.dart';
import 'models/auth/auth.dart';
import 'models/detail/detail.dart';
import 'models/edit_profile/edit_profile.dart';
import 'models/followers/followers_model.dart';
import 'models/image_upload_model/image_upload_model.dart';
import 'models/notification/notification_model.dart';
import 'models/notification_setting/notification_setting.dart';
import 'models/profile/profile.dart';
import 'models/profile/user_search_history.dart';
import 'models/settings/change_email/confirm_email.dart';
import 'models/settings/change_email/new_email.dart';
import 'models/settings/get_me_settings/get_settings_me.dart';
import 'models/settings/password.dart';
import 'models/settings/put_general_info.dart';

part 'grid_apis.chopper.dart';

@ChopperApi(baseUrl: '/api/v1/')
abstract class AuthService extends ChopperService {
  @Post(path: 'user/login/')
  Future<Response<Login>> login(
    @Body() Login body,
  );

  @Post(path: 'user/signup/')
  Future<Response<SignUp>> signUp(
    @Body() SignUp body,
  );

  @Post(path: 'notification/firebase/add_token/')
  Future<Response<void>> firebaseToken(
    @Header('Authorization') String header,
    @Body() FirebaseToken body,
  );

  @Post(path: 'user/login_with_social_network/')
  Future<Response<SocialSignIn>> socialSignIn(
    @Body() SocialSignIn body,
  );

  @Post(path: 'user/forgot_password/')
  Future<Response<void>> forgotPassword(
    @Body() ForgotPassword body,
  );

  @Post(path: 'user/confirm_code/')
  Future<Response<VerifyCode>> verifyCode(
    @Body() VerifyCode body,
  );

  @Post(path: 'user/activate_account/')
  Future<Response<VerifyCode>> activateAccount(
    @Body() VerifyCode body,
  );

  @Post(path: 'user/reset_password/')
  Future<Response<NewPassword>> newPassword(
    @Body() NewPassword body,
  );

  @Post(path: 'user/favourite_game/')
  Future<Response<NewPassword>> favouriteGames(
    @Header('Authorization') String header,
    @Body() FavouriteGames body,
  );

  static AuthService create() =>
      _$AuthService(_Client('https://devapi.gridgamers.com', true));
}

@ChopperApi(baseUrl: '/api/v1/')
abstract class GameService extends ChopperService {
  @Get(path: 'game/')
  Future<Response<GameList>> games(
    @Header('Authorization') String header,
  );

  static GameService create() =>
      _$GameService(_Client('https://devapi.gridgamers.com', true));
}





@ChopperApi(baseUrl: '/api/v1')
abstract class EditProfileService extends ChopperService {

  /*@Put(path: 'user/edit_profile/display/')
  Future<Response<Detail>> editProfile(

    @Header('Authorization') String header,
    @Body() ProfileM body,

  );
*/
  @Post(path: 'user/check_username/')
  Future<Response<Detail>> checkUserName(

      @Header('Authorization') String header,
      @Body() UserNameM body,

      );



  static EditProfileService create() =>
      _$EditProfileService(_Client('https://devapi.gridgamers.com', true));
}

@ChopperApi(baseUrl: '/api/v1/user')
abstract class FollowersService extends ChopperService {
  @Get(path: 'users/?search={search}')
  Future<Response<FollowersModel>> users(@Header('Authorization') String header,
      @Path("page") int page, @Path("search") String search);

  @Post(path: 'search_history/')
  Future<Response<UserSearchHistoryResultModel>> userSearchHistoryPost(
    @Header('Authorization') String header,
    @Body() UserSearchHistoryPostModel userSearchHistoryPostModel,
  );

  @Get(path: 'search_history/?page_size=5')
  Future<Response<UserSearchHistoryModel>> userSearchHistory(
    @Header('Authorization') String header,
  );

  @Delete(path: 'search_history/{id}/')
  Future<Response<dynamic>> deleteUserSearchHistory(
    @Header('Authorization') String header,
    @Path("id") int id,
  );

  @Get(path: 'search_history/clear/')
  Future<Response<FollowersModel>> clearUserSearchHistory(
      @Header('Authorization') String header);

  @Get(path: '{id}/{type}/?page={page}')
  Future<Response<FollowersModel>> followers(
      @Header('Authorization') String header,
      @Path("id") int id,
      @Path("page") int page,
      @Path("type") String type);

  @Delete(path: 'follow/')
  Future<Response<Map<String, dynamic>>> unfollow(
    @Header('Authorization') String header,
    @Body() UnFollowPostModel unFollowPostModel,
  );

  @Post(path: 'follow/')
  Future<Response<Map<String, dynamic>>> follow(
    @Header('Authorization') String header,
    @Body() UnFollowPostModel unFollowPostModel,
  );

  static FollowersService create() =>
      _$FollowersService(_Client('https://devapi.gridgamers.com', true));
}

@ChopperApi(baseUrl: '/api/v1')
abstract class ImageUploadService extends ChopperService {
  @Post(path: 'file/')
  @multipart
  Future<Response<ImageUploadModel>> imageUpload(
    @Header('Authorization') String header,
    @PartFile('file') String file,
  );

  static ImageUploadService create() =>
      _$ImageUploadService(_Client('https://devapi.gridgamers.com', true));
}

@ChopperApi(baseUrl: '/api/v1/')
abstract class SettingsService extends ChopperService {
  @Get(path: 'user/me/')
  Future<Response<General>> generalSettings(
    @Header('Authorization') String header,
  );

  @Get(path: 'configuration/project/')
  Future<Response<PrivacyPolicy>> privacyPolicy(
    @Header('Authorization') String header,
  );

  @Post(path: 'user/change_password/')
  Future<Response<Detail>> chagePasswordSettings(
    @Header('Authorization') String header,
    @Body() PasswordEntity passwordEntity,
  );

  @Put(path: 'user/edit_profile/general/')
  Future<Response<Detail>> putGeneralInfoSettings(
    @Header('Authorization') String header,
    @Body() GeneralInfoEntity generalInfoEntity,
  );

  @Post(path: 'user/send_change_email_code/')
  Future<Response<Detail>> postNewEmailSettings(
    @Header('Authorization') String header,
    @Body() NewEmail newEmailEntity,
  );

  @Post(path: 'user/change_email/')
  Future<Response<Detail>> confirmEmailSettings(
    @Header('Authorization') String header,
    @Body() ConfirmEmail confirmEmailEntity,
  );

  static SettingsService create() =>
      _$SettingsService(_Client('https://devapi.gridgamers.com', true));
}

@ChopperApi(baseUrl: '/api/v1/user/')
abstract class ProfileService extends ChopperService {
  @Get(path: 'me/')
  Future<Response<ProfileModel>> getProfileData(
    @Header('Authorization') String header,
  );

  @Get(path: 'detail/{id}/')
  Future<Response<ProfileModel>> getUserProfileData(
    @Path("id") int id,
    @Header('Authorization') String header,
  );

  static ProfileService create() =>
      _$ProfileService(_Client('https://devapi.gridgamers.com', true));
}


// @ChopperApi(baseUrl: 'v1/')
// abstract class FireBaseService extends ChopperService {
//   @Post(path: 'shortLinks?key=AIzaSyCiEcfJWLrZtIWaF-7jNc4dvIdAo665ZaE')
//   Future<Response> getDynamicLink(
//    // @Header('Authorization') String header,
//       @Body() DataShare eventId,
//   );
//
//   static FireBaseService create() =>
//       _$FireBaseService(_Client('https://firebasedynamiclinks.googleapis.com', true));
// }



@ChopperApi(baseUrl: '/api/v1/')
abstract class NotificationService extends ChopperService {
  @Get(path: 'user/notification_settings/')
  Future<Response<NotificationSetting>> getSettingNotification(
      @Header('Authorization') String header,
      );

  @Put(path: 'user/notification_settings/')
  Future<Response<NotificationSetting>> putSettingNotification(
      @Header('Authorization') String header,
      @Body() NotificationSetting notificationSetting,
      );

  @Get(path: 'notification/my?page={page}')
  Future<Response<NotificationModel>> getNotifications(
      @Header('Authorization') String header,
      @Path('page') int page,
      );

  static NotificationService create() =>
      _$NotificationService(_Client('https://devapi.gridgamers.com', true));
}

class _Client extends ChopperClient {
  _Client(String baseUrl, bool useInterceptors)
      : super(
          baseUrl: baseUrl,
          interceptors: useInterceptors
              ? [
                  HttpLoggingInterceptor(),
                  CurlInterceptor(),
                  NetworkInterceptor(),
                  BeckendInterceptor(),
                ]
              : const [],
          converter: BuiltValueConverter(),
    errorConverter: ErrorMyConverter()
        );
}
