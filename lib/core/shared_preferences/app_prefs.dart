import 'package:shared_preferences/shared_preferences.dart';

const String onBoardingScreenViewed = "onBoardingScreenViewed";
const String isUserLoggedKey = "isUserLoggedKey";
const String authTokenKey = "authTokenKey";
const String darkMode = "lightMode";
//
const String filterMode = "filterMode";
const String userNameKey = "userNameKey";

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  //***************** main status *****************//
  // see on boarding
  Future<void> setOnBoardingScreenViewed() async {
    _sharedPreferences.setBool(onBoardingScreenViewed, true);
  }

  // get on boarding
  Future<bool> isOnBoardingScreenViewed() async {
    return _sharedPreferences.getBool(onBoardingScreenViewed) ?? false;
  }

  // set login
  Future<void> setIsLogged() async {
    _sharedPreferences.setBool(isUserLoggedKey, true);
  }

  // is login
  Future<bool> isLogged() async {
    bool? isLog = _sharedPreferences.getBool(isUserLoggedKey);
    return isLog ?? false;
  }

  // set Auth Token
  Future<void> setAuthToken(String token) async {
    _sharedPreferences.setString(authTokenKey, token);
  }

  // get Auth Token
  Future<String> getAuthToken() async {
    String? token = _sharedPreferences.getString(authTokenKey);
    return token ?? '';
  }

  // dark mode
  Future<void> saveDarkMode({required bool isDark}) async {
    _sharedPreferences.setBool(darkMode, isDark);
  }

  // isDarkMode
  Future<bool> isDarkMode() async {
    bool? dark = _sharedPreferences.getBool(darkMode);
    if (dark != null) {
      return dark;
    } else {
      return false;
    }
  }

  // logout
  Future<void> logout() async {
    _sharedPreferences.remove(isUserLoggedKey);
    _sharedPreferences.remove(authTokenKey);
    _sharedPreferences.remove(userNameKey);
  }

  //***************** changed status *****************//
  // set user name
  Future<void> setUserName(String name) async {
    _sharedPreferences.setString(userNameKey, name);
  }

  // get user name
  Future<String> getUserName() async {
    String? name = _sharedPreferences.getString(userNameKey);
    return name ?? '';
  }

  // save filter
  Future<void> saveFilter({required String filter}) async {
    _sharedPreferences.setString(filterMode, filter);
  }

  // get filter
  Future<String> getFilter() async {
    String? filter = _sharedPreferences.getString(filterMode);
    if (filter != null) {
      return filter;
    } else {
      return 'poems';
    }
  }
}
