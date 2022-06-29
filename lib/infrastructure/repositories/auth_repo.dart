import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:oxo/domain/auth/auth_failure.dart';
import 'package:oxo/domain/auth/i_auth_facade.dart';
import 'package:oxo/domain/common/resend_code.dart';
import 'package:oxo/domain/common/token.dart';
import 'package:oxo/domain/common/token_ext.dart';
import 'package:oxo/domain/sign_in/auth_failure.dart';
import 'package:oxo/domain/sign_in/i_sign_in_facade.dart';
import 'package:oxo/infrastructure/models/auth/auth.dart';
import 'package:oxo/infrastructure/services/firebase.dart';
import 'package:oxo/infrastructure/services/prefs.dart';

import '../exceptions.dart';
import '../grid_apis.dart';

class AuthRepository implements IAutFacade, ISignInFacade {
  final PreferenceService _preferenceService;
  final AuthService _authService;
  AuthRepository(
    this._preferenceService,
    this._authService,
  );

  @override
  Option<AuthFailure> getUser() {
    final Token token = _preferenceService.token;
    return optionOf(token.hasFailure);
  }

  @override
  Future<Option<SignInFailure>> login(Login login) async {
    try {
      final res = await _authService.login(login);
      if (res.isSuccessful && res.statusCode == 200) {
        final tokens = Token(
          accessToken: res.body["access_token"],
          refreshToken: res.body["refresh_token"],
        );
        _preferenceService.setToken(tokens);
        // await _uploadFirebaseToken();
        return optionOf(null);
      } else {
        return optionOf(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return optionOf(NetworkFailure(message: 'network_error'.tr()));
      } else {
        return optionOf(const Unknown(message: 'Parol yoki telefon nomer xatto bo`lishi mukin'));
      }
    }
  }

  @override
  Future<Option<SignInFailure>> sendCode(SendCode number) async {
    try {
      final res = await _authService.sendCode(number);
      if (res.isSuccessful && res.statusCode == 200) {
        return optionOf(null);
      } else {
        return optionOf(
          InvalidCredentials(message: res.bodyString),
        );
      }
    } catch (e) {
      if (e is NetworkException) {
        return optionOf(NetworkFailure(message: 'network_error'.tr()));
      } else {
        return optionOf(const Unknown(message: 'Bu raqam allaqachon ishlatilgan'));
      }
    }
  }

  @override
  Future<Option<SignInFailure>> signUp(SignUp signUp) async {
    try {
      final res = await _authService.signUp(signUp);
      if (res.isSuccessful && res.statusCode == 200) {
        print("res.body[]");
        print(res.body["access_token"]);
        final tokens = Token(
          accessToken: res.body["access_token"],
          refreshToken: res.body["refresh_token"],
        );
        _preferenceService.setToken(tokens);
        return optionOf(null);
      } else {
        return optionOf(
          InvalidCredentials(message: res.bodyString),
        );
      }
    } catch (e) {
      if (e is NetworkException) {
        return optionOf(NetworkFailure(message: 'network_error'.tr()));
      } else {
        return optionOf(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  @override
  Future<Either<SignInFailure, SocialSignIn>> socialSignIn(
      SocialSignIn data) async {
    try {
      final res = await _authService.socialSignIn(data);
      if (res.isSuccessful &&
          res.statusCode == 200 &&
          res.body is SocialSignIn) {
        final tokens = Token(
          accessToken: res.body!.accessToken,
          refreshToken: res.body!.refreshToken,
        );
        _preferenceService.setToken(tokens);
        await _uploadFirebaseToken();
        return right(res.body!);
      } else {
        return left(InvalidCredentials(message: 'invalid_credential'.tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return left(NetworkFailure(message: 'network_error'.tr()));
      } else {
        return left(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

  Future<void> _uploadFirebaseToken() async {
    final token = _preferenceService.token;
    // final fcmToken = await FirebaseMessagingX.getFcmToken();
    final body = FirebaseToken((f) => f.firebaseToken = "fcmToken");
    assert(token.accessToken != null);
    final res = await _authService.firebaseToken(token.toToken, body);

    if (res.isSuccessful) {
      return;
    } else {
      throw NetworkException();
    }
  }

  @override
  Future<Option<SignInFailure>> forgotPassword(ForgotPassword data) async {
    try {
      final res = await _authService.forgotPassword(data);
      if (res.isSuccessful) {
        return none();
      } else {
        return some(Unknown(message: 'unknown_error'.tr()));
      }
    } catch (e) {
      return some(NetworkFailure(message: 'network_error'.tr()));
    }
  }

  @override
  Future<Option<SignInFailure>> verifyCode(
      VerifyCode data, ResendCodeType type) async {
    try {
      Response res;
      if (type == ResendCodeType.registering) {
        res = await _authService.verifyCode(data);
      } else {
        res = await _authService.activateAccount(data);
      }

      if (res.isSuccessful) {
        if (type == ResendCodeType.registering) {
          // final tokens = Token(
          //   accessToken: res.body!.accessToken,
          //   refreshToken: res.body!.refreshToken,
          // );
          // _preferenceService.setToken(tokens);
          // await _uploadFirebaseToken();
        }
        return none();
      } else if(res.statusCode == 400) {
        return some(Unknown(message: 'invalid_code'.tr()));
      } else {
        return some(Unknown(message: 'invalid_code'.tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return optionOf(NetworkFailure(message: 'network_error'.tr()));
      } else {
        return optionOf(Unknown(message: 'invalid_code'.tr()));
      }
    }
  }

  @override
  Future<Option<SignInFailure>> newPassword(NewPassword data) async {
    try {
      final res = await _authService.newPassword(data);

      if (res.isSuccessful) {
        final tokens = Token(
          accessToken: res.body!.accessToken,
          refreshToken: res.body!.accessToken,
        );
        _preferenceService.setToken(tokens);
        await _uploadFirebaseToken();
        return none();
      } else {
        return some(Unknown(message: 'invalid_code'.tr()));
      }
    } catch (e) {
      if (e is NetworkException) {
        return optionOf(NetworkFailure(message: 'network_error'.tr()));
      } else {
        return optionOf(Unknown(message: 'unknown_error'.tr()));
      }
    }
  }

}
