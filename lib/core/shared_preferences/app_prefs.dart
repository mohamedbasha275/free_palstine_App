import 'package:shared_preferences/shared_preferences.dart';

const String onBoardingScreenViewed = "onBoardingScreenViewed";
const String isUserLoggedKey = "isUserLoggedKey";
const String authTokenKey = "authTokenKey";
const String darkMode = "lightMode";
//
const String filterMode = "filterMode";
const String userNameKey = "userNameKey";
const String examPoints = "examPoints";

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

  // setExamPoints
  Future<void> setExamPoints({required int points}) async {
    List<String>? degree = _sharedPreferences.getStringList(examPoints);
    int exams = 0;
    int allPoints = 0;
    if (degree != null) {
      exams = int.parse(degree[0]);
      allPoints = int.parse(degree[0]);
    }
    _sharedPreferences.setStringList(examPoints, ['${exams+1}', '${allPoints+points}']);
  }

  // getExamPoints
  Future<List<int>> getExamPoints() async {
    List<String>? degree = _sharedPreferences.getStringList(examPoints);
    if (degree != null) {
      return [int.parse(degree[0]),int.parse(degree[1])];
    } else {
      return [0,0];
    }
  }
}
