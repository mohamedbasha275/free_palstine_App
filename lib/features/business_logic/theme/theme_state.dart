part of 'theme_cubit.dart';

@immutable
class ThemeState {
  const ThemeState();
}
class ThemeSuccessState extends ThemeState {
  final MyThemeMode themeMode;
  const ThemeSuccessState(this.themeMode);
}
class LoadingTheme extends ThemeState {
  const LoadingTheme();
}
enum MyThemeMode { light, dark }

