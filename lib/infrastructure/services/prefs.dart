
import 'package:oxo/domain/common/token.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceService {
  static const _accessToken = 'access_token';
  static const _refreshToken = 'refresh_token';
  static const _id = 'id';
  static const _isVendor = 'isVendor';
  static const _profileImage = 'profileImage';

  static SharedPreferences? _preferences;

  PreferenceService._();

  static Future<PreferenceService> get create async {
    _preferences ??= await SharedPreferences.getInstance();
    return PreferenceService._();
  }

  void setToken(Token token) async {
    await _preferences?.setString(_accessToken, token.accessToken ?? '');
    await _preferences?.setString(_refreshToken, token.refreshToken ?? '');
  }

  Token get token {
    final accessToken = _preferences?.getString(_accessToken);
    final refreshToken = _preferences?.getString(_refreshToken);

    return Token(accessToken: accessToken, refreshToken: refreshToken);
  }

  void setId(int? id) async {
    await _preferences?.setInt(_id, id ?? -1);
  }

  int get getId {
    final id = _preferences?.getInt(_id);

    return id??(-1);
  }

  void setIsVendor(bool? isVendor) async {
    await _preferences?.setBool(_isVendor, isVendor ?? false);
  }

  bool get getIsVendor {
    final isVendor = _preferences?.getBool(_isVendor);

    return isVendor??(false);
  }

  void setProfileImage(String? profileImage) async {
    await _preferences?.setString(_profileImage, profileImage ?? '');
  }

  String get getProfileImage {
    final getProfileImage = _preferences?.getString(_profileImage);

    return getProfileImage??('');
  }

  void signOut() async => await _preferences?.clear();
}
