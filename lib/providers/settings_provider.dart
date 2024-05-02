import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  String languageCode = "ar";

  void changeLanguage(String newLanguageCode) {
    languageCode = newLanguageCode;
    notifyListeners();
  }

  void enableLightMode() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }

  void enableDarkMode() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  String getBackGroundImage() {
    return themeMode == ThemeMode.light
        ? 'assets/images/bg3.png'
        : 'assets/images/bg_dark.png';
  }
}
