import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/text_styles_manager.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/business_logic/theme/theme_cubit.dart';


ThemeData getApplicationTheme(themeMode) {
  return themeMode == MyThemeMode.light ? lightTheme : darkTheme;
}

ThemeData lightTheme = ThemeData(
  primarySwatch: LightAppColors.primarySwatch,
  primaryColor: LightAppColors.back1,
  primaryColorLight: LightAppColors.back2,
  primaryColorDark: LightAppColors.back3,
  splashColor: LightAppColors.btnBack2,
  highlightColor: LightAppColors.primaryTextColor,
  canvasColor: LightAppColors.back1,
  dividerColor: AppColors.nearWhite,
  hintColor: LightAppColors.notesColor,
  hoverColor: AppColors.nearWhiteGreen,
  cardColor: LightAppColors.iconLabel,
  secondaryHeaderColor: AppColors.nearBlack,
  indicatorColor: AppColors.nearWhiteGreen2,
  shadowColor:  AppColors.white,
  focusColor: AppColors.white,
  disabledColor: LightAppColors.btnBack2,
  unselectedWidgetColor: AppColors.nearWhiteGreen,
  // app bar theme
  appBarTheme: const AppBarTheme(
    elevation: AppSize.s1,
    shadowColor: Colors.greenAccent,
    backgroundColor:  Color.fromRGBO(255, 255, 255, 1),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor:  Color.fromRGBO(255, 255, 255, 1),
      // top bg color
      systemNavigationBarColor:  Color.fromRGBO(255, 255, 255, 1),
      // bottom bg color
      statusBarBrightness: Brightness.dark,
      // top text color
      systemNavigationBarIconBrightness: Brightness.dark,
      // bottom text color
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: AppColors.transparentColor,
    ),
  ),
  // text theme
  textTheme: TextTheme(
    headlineLarge: getBoldStyle(color: AppColors.white, fontSize: FontSize.s37),
    headlineMedium:
        getBoldStyle(color: AppColors.nearBlack, fontSize: FontSize.s30),
    headlineSmall:
        getBoldStyle(color: AppColors.nearBlack, fontSize: FontSize.s18),
    labelLarge:
        getRegularStyle(color: AppColors.nearBlack, fontSize: FontSize.s22),
    labelMedium: getRegularStyle(
        color: LightAppColors.primaryTextColor, fontSize: FontSize.s16),
  ),
  fontFamily: FontConstants.cairoFontFamily,
);

//
ThemeData darkTheme = ThemeData(
  primarySwatch: DarkAppColors.primarySwatch,
  primaryColor: DarkAppColors.back1,
  primaryColorLight: DarkAppColors.back2,
  primaryColorDark: DarkAppColors.back3,
  splashColor: DarkAppColors.btnBack2,
  highlightColor: DarkAppColors.primaryTextColor,
  canvasColor: DarkAppColors.inputColor,
  dividerColor: DarkAppColors.inputColor,
  hintColor: DarkAppColors.notesColor,
  hoverColor: DarkAppColors.inputColor,
  cardColor: DarkAppColors.iconLabel,
  secondaryHeaderColor: AppColors.white,
  indicatorColor: DarkAppColors.inputColor,
  shadowColor:  DarkAppColors.btnBack2,
  focusColor: DarkAppColors.back4,
  disabledColor: DarkAppColors.btnBack3,
  unselectedWidgetColor: AppColors.nearWhiteGreen,
  // app bar theme
  appBarTheme: const AppBarTheme(
    elevation: AppSize.s0,
    backgroundColor: DarkAppColors.back4,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: DarkAppColors.back4, // top bg color
      statusBarIconBrightness: Brightness.light, // top icon color
      systemNavigationBarColor: DarkAppColors.back3, // bottom bg color
      statusBarBrightness: Brightness.dark, // top text color
      systemNavigationBarIconBrightness: Brightness.light, // bottom text color
      systemNavigationBarDividerColor: AppColors.transparentColor,
    ),
  ),
  // text theme
  textTheme: TextTheme(
    headlineLarge: getBoldStyle(color: AppColors.white, fontSize: FontSize.s37),
    headlineMedium: getBoldStyle(color: AppColors.white,fontSize: FontSize.s30),
    headlineSmall: getBoldStyle(color: AppColors.white, fontSize: FontSize.s18),
    labelLarge: getRegularStyle(color: AppColors.nearBlack, fontSize: FontSize.s22),
    labelMedium: getRegularStyle(color: LightAppColors.primaryTextColor, fontSize: FontSize.s16),
  ),
  fontFamily: FontConstants.cairoFontFamily,
);
