import 'dart:ui';

enum LanguageType { english, arabic }

const String arabicCode = "ar";
const String englishCode = "en";
const String localizationAssetPath = "assets/translations";

const Locale arabicLocale = Locale("ar", "SA");
const Locale englishLocale = Locale("en", "US");

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.english:
        return englishCode;
      case LanguageType.arabic:
        return arabicCode;
    }
  }
}
