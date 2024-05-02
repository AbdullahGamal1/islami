import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyThemeData {
  static const lightPrimaryColor = Color(0xFFB7935F);
  static const lightAccentColor = Color(0xFFB7935F);
  static const darkPrimaryColor = Color(0xFF141A2E);
  static const darkAccentColor = Color(0xFFFACC1D);
  static const lightMainTextColor = Color(0xFF242424);
  static const lightAccentTextColor = Color(0xFFB7935F);
  static const darkMainTextColor = Color(0xFFFFFFFF);
  static const darkAccentTextColor = Color(0xFFFACC1D);

  static var lightTheme = ThemeData(
      primaryColorLight: lightPrimaryColor,
      canvasColor: lightAccentColor,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: lightAccentColor),
      cardTheme: const CardTheme(color: Colors.white),
      primaryColor: lightPrimaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Colors.black54),
      appBarTheme:
          const AppBarTheme(color: Colors.transparent, centerTitle: true),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: lightPrimaryColor,
          selectedItemColor: Colors.black54,
          unselectedItemColor: Colors.white),
      textTheme: TextTheme(
        headline3: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.bold,
          color: lightMainTextColor,
        ),
        headline5: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
          color: lightMainTextColor,
        ),
        bodyText1: TextStyle(
          fontSize: 23.sp,
          fontWeight: FontWeight.normal,
          color: lightMainTextColor,
        ),
        bodyText2: TextStyle(
          fontSize: 19.sp,
          fontWeight: FontWeight.normal,
          color: lightMainTextColor,
        ),
      ));

  static var darkTheme = ThemeData(
      primaryColorDark: darkPrimaryColor,
      canvasColor: darkAccentColor,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: darkAccentColor),
      cardTheme: const CardTheme(color: darkPrimaryColor),
      primaryColor: darkPrimaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: darkAccentColor),
          color: Colors.transparent,
          centerTitle: true),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: darkPrimaryColor,
          selectedItemColor: darkAccentColor,
          unselectedItemColor: Colors.white),
      iconTheme: const IconThemeData(color: Colors.white),
      textTheme: TextTheme(
        headline3: TextStyle(
          fontSize: 32.sp,
          fontWeight: FontWeight.bold,
          color: darkMainTextColor,
        ),
        headline5: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.bold,
          color: darkMainTextColor,
        ),
        bodyText1: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.normal,
          color: darkMainTextColor,
        ),
        bodyText2: TextStyle(
          fontSize: 19.sp,
          fontWeight: FontWeight.normal,
          color: darkMainTextColor,
        ),
      ));
}
