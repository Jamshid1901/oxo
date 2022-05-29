// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grid_apis.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AuthService extends AuthService {
  _$AuthService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AuthService;

  @override
  Future<Response<Login>> login(Login body) {
    final $url = '/api/v1/user/login/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<Login, Login>($request);
  }

  @override
  Future<Response<SignUp>> signUp(SignUp body) {
    final $url = '/api/v1/user/signup/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<SignUp, SignUp>($request);
  }

  @override
  Future<Response<SignUp>> sendCode(SendCode body) {
    final $url = '/api/v1/register/send-code/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<SignUp, SignUp>($request);
  }

  @override
  Future<Response<void>> firebaseToken(String header, FirebaseToken body) {
    final $url = '/api/v1/notification/firebase/add_token/';
    final $headers = {
      'Authorization': header,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<void, void>($request);
  }

  @override
  Future<Response<SocialSignIn>> socialSignIn(SocialSignIn body) {
    final $url = '/api/v1/user/login_with_social_network/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<SocialSignIn, SocialSignIn>($request);
  }

  @override
  Future<Response<void>> forgotPassword(ForgotPassword body) {
    final $url = '/api/v1/user/forgot_password/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<void, void>($request);
  }

  @override
  Future<Response<dynamic>> verifyCode(VerifyCode body) {
    final $url = '/api/v1/register/verify/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<VerifyCode>> activateAccount(VerifyCode body) {
    final $url = '/api/v1/user/activate_account/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<VerifyCode, VerifyCode>($request);
  }

  @override
  Future<Response<NewPassword>> newPassword(NewPassword body) {
    final $url = '/api/v1/user/reset_password/';
    final $body = body;
    final $request = Request('POST', $url, client.baseUrl, body: $body);
    return client.send<NewPassword, NewPassword>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$EditProfileService extends EditProfileService {
  _$EditProfileService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = EditProfileService;

  @override
  Future<Response<Detail>> checkUserName(String header, UserNameM body) {
    final $url = '/api/v1/user/check_username/';
    final $headers = {
      'Authorization': header,
    };

    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<Detail, Detail>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$FollowersService extends FollowersService {
  _$FollowersService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = FollowersService;

  @override
  Future<Response<FollowersModel>> users(
      String header, int page, String search) {
    final $url = '/api/v1/user/users/?search=${search}';
    final $headers = {
      'Authorization': header,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<FollowersModel, FollowersModel>($request);
  }

  @override
  Future<Response<UserSearchHistoryResultModel>> userSearchHistoryPost(
      String header, UserSearchHistoryPostModel userSearchHistoryPostModel) {
    final $url = '/api/v1/user/search_history/';
    final $headers = {
      'Authorization': header,
    };

    final $body = userSearchHistoryPostModel;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<UserSearchHistoryResultModel,
        UserSearchHistoryResultModel>($request);
  }

  @override
  Future<Response<UserSearchHistoryModel>> userSearchHistory(String header) {
    final $url = '/api/v1/user/search_history/?page_size=5';
    final $headers = {
      'Authorization': header,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client
        .send<UserSearchHistoryModel, UserSearchHistoryModel>($request);
  }

  @override
  Future<Response<dynamic>> deleteUserSearchHistory(String header, int id) {
    final $url = '/api/v1/user/search_history/${id}/';
    final $headers = {
      'Authorization': header,
    };

    final $request = Request('DELETE', $url, client.baseUrl, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<FollowersModel>> clearUserSearchHistory(String header) {
    final $url = '/api/v1/user/search_history/clear/';
    final $headers = {
      'Authorization': header,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<FollowersModel, FollowersModel>($request);
  }

  @override
  Future<Response<FollowersModel>> followers(
      String header, int id, int page, String type) {
    final $url = '/api/v1/user/${id}/${type}/?page=${page}';
    final $headers = {
      'Authorization': header,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<FollowersModel, FollowersModel>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> unfollow(
      String header, UnFollowPostModel unFollowPostModel) {
    final $url = '/api/v1/user/follow/';
    final $headers = {
      'Authorization': header,
    };

    final $body = unFollowPostModel;
    final $request =
        Request('DELETE', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }

  @override
  Future<Response<Map<String, dynamic>>> follow(
      String header, UnFollowPostModel unFollowPostModel) {
    final $url = '/api/v1/user/follow/';
    final $headers = {
      'Authorization': header,
    };

    final $body = unFollowPostModel;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<Map<String, dynamic>, Map<String, dynamic>>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ImageUploadService extends ImageUploadService {
  _$ImageUploadService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ImageUploadService;

  @override
  Future<Response<ImageUploadModel>> imageUpload(String header, String file) {
    final $url = '/api/v1/file/';
    final $headers = {
      'Authorization': header,
    };

    final $parts = <PartValue>[PartValueFile<String>('file', file)];
    final $request = Request('POST', $url, client.baseUrl,
        parts: $parts, multipart: true, headers: $headers);
    return client.send<ImageUploadModel, ImageUploadModel>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$SettingsService extends SettingsService {
  _$SettingsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SettingsService;

  @override
  Future<Response<General>> generalSettings(String header) {
    final $url = '/api/v1/user/me/';
    final $headers = {
      'Authorization': header,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<General, General>($request);
  }

  @override
  Future<Response<PrivacyPolicy>> privacyPolicy(String header) {
    final $url = '/api/v1/configuration/project/';
    final $headers = {
      'Authorization': header,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<PrivacyPolicy, PrivacyPolicy>($request);
  }

  @override
  Future<Response<Detail>> chagePasswordSettings(
      String header, PasswordEntity passwordEntity) {
    final $url = '/api/v1/user/change_password/';
    final $headers = {
      'Authorization': header,
    };

    final $body = passwordEntity;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<Detail, Detail>($request);
  }

  @override
  Future<Response<Detail>> putGeneralInfoSettings(
      String header, GeneralInfoEntity generalInfoEntity) {
    final $url = '/api/v1/user/edit_profile/general/';
    final $headers = {
      'Authorization': header,
    };

    final $body = generalInfoEntity;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<Detail, Detail>($request);
  }

  @override
  Future<Response<Detail>> postNewEmailSettings(
      String header, NewEmail newEmailEntity) {
    final $url = '/api/v1/user/send_change_email_code/';
    final $headers = {
      'Authorization': header,
    };

    final $body = newEmailEntity;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<Detail, Detail>($request);
  }

  @override
  Future<Response<Detail>> confirmEmailSettings(
      String header, ConfirmEmail confirmEmailEntity) {
    final $url = '/api/v1/user/change_email/';
    final $headers = {
      'Authorization': header,
    };

    final $body = confirmEmailEntity;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<Detail, Detail>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$ProfileService extends ProfileService {
  _$ProfileService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ProfileService;

  @override
  Future<Response<ProfileModel>> getProfileData(String header) {
    final $url = '/api/v1/user/me/';
    final $headers = {
      'Authorization': header,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ProfileModel, ProfileModel>($request);
  }

  @override
  Future<Response<ProfileModel>> getUserProfileData(int id, String header) {
    final $url = '/api/v1/user/detail/${id}/';
    final $headers = {
      'Authorization': header,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<ProfileModel, ProfileModel>($request);
  }
}

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$NotificationService extends NotificationService {
  _$NotificationService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = NotificationService;

  @override
  Future<Response<NotificationSetting>> getSettingNotification(String header) {
    final $url = '/api/v1/user/notification_settings/';
    final $headers = {
      'Authorization': header,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<NotificationSetting, NotificationSetting>($request);
  }

  @override
  Future<Response<NotificationSetting>> putSettingNotification(
      String header, NotificationSetting notificationSetting) {
    final $url = '/api/v1/user/notification_settings/';
    final $headers = {
      'Authorization': header,
    };

    final $body = notificationSetting;
    final $request =
        Request('PUT', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<NotificationSetting, NotificationSetting>($request);
  }

  @override
  Future<Response<NotificationModel>> getNotifications(
      String header, int page) {
    final $url = '/api/v1/notification/my?page=${page}';
    final $headers = {
      'Authorization': header,
    };

    final $request = Request('GET', $url, client.baseUrl, headers: $headers);
    return client.send<NotificationModel, NotificationModel>($request);
  }
}
