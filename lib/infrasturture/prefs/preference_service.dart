import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  static const _userToken = 'user_token';
  static const _refreshToken = 'refresh_token';

  static SharedPreferences? _preferences;

  PreferencesService._();

  static Future<PreferencesService> create() async {
    _preferences ??= await SharedPreferences.getInstance();
    return PreferencesService._();
  }

  String? get getUserToken => _preferences?.getString(_userToken);

  String? get getRefreshToken => _preferences?.getString(_refreshToken);

  Future<void> token(String token) async =>
      await _preferences?.setString(_userToken, token);


  Future<void> refreshToken(String token) async =>
      await _preferences?.setString(_refreshToken, token);

  Future<void> signOut() async => await _preferences?.clear();
}
