import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  String languageCode = "ar";

  void changeLanguage(String newLanguageCode) async {
    languageCode = newLanguageCode;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('lang', newLanguageCode);
  }

  void enableLightMode() async {
    themeMode = ThemeMode.light;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('theme', themeMode == ThemeMode.light ? 'light' : 'dark');
  }

  void enableDarkMode() async {
    themeMode = ThemeMode.dark;
    notifyListeners();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('theme', themeMode == ThemeMode.dark ? 'dark' : 'light');
  }

  String getBackGroundImage() {
    return themeMode == ThemeMode.light
        ? 'assets/images/bg3.png'
        : 'assets/images/bg_dark.png';
  }
}
