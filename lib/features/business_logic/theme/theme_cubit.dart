import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:free_palestine/core/di/service_locator.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/shared_preferences/app_prefs.dart';
part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState());

  void setDarkMode(bool value) {
    AppPreferences appPreferences = getIt.get<AppPreferences>();
    appPreferences.saveDarkMode(isDark: value);
    emit(ThemeSuccessState(value ? MyThemeMode.dark : MyThemeMode.light));
  }
  void isDarkMode() async{
    emit(const LoadingTheme());
    AppPreferences appPreferences = getIt.get<AppPreferences>();
    bool isDark = await appPreferences.isDarkMode();
    emit(ThemeSuccessState( isDark ? MyThemeMode.dark : MyThemeMode.light));
  }
}
