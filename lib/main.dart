import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/my_theme_data/my_them_data.dart';
import 'package:islami/scrrens/home_screen/hadith_tab/hadith_details_screen.dart';
import 'package:islami/scrrens/home_screen/home_screen.dart';
import 'package:islami/scrrens/home_screen/quran_tab/sura_screen/sura_detailes_screen.dart';
import 'package:islami/scrrens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: MyThemeData.themeMode,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SplashScreen.routName: (context) => const SplashScreen(),
        SuraDetailsScreen.routeName: (context) => const SuraDetailsScreen(),
        HadithDetailsScreen.routeName: (context) => const HadithDetailsScreen()
      },
      initialRoute: SplashScreen.routName,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale('ar'),
    );
  }
}
