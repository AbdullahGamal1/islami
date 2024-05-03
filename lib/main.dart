import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/my_theme_data/my_them_data.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/screens/home_screen/hadith_tab/hadith_details_screen.dart';
import 'package:islami/screens/home_screen/home_screen.dart';
import 'package:islami/screens/home_screen/quran_tab/sura_screen/sura_detailes_screen.dart';
import 'package:islami/screens/splash.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SettingsProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  late SettingsProvider provider;

  @override
  Widget build(BuildContext context) {
    provider = Provider.of<SettingsProvider>(context);
    initSharedPref();
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        title: 'Islami',
        darkTheme: MyThemeData.darkTheme,
        theme: MyThemeData.lightTheme,
        themeMode: provider.themeMode,
        routes: {
          HomeScreen.routName: (context) => const HomeScreen(),
          SplashScreen.routName: (context) => const SplashScreen(),
          SuraDetailsScreen.routeName: (context) => const SuraDetailsScreen(),
          HadithDetailsScreen.routeName: (context) =>
              const HadithDetailsScreen()
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
        locale: Locale(provider.languageCode),
      ),
    );
  }

  void initSharedPref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String lang = prefs.getString('lang') ?? "en";
    String theme = prefs.getString('theme') ?? "light";
    provider.changeLanguage(lang);
    switch (theme) {
      case 'light':
        provider.enableLightMode();
        break;
      case 'dark':
        provider.enableDarkMode();
        break;
    }
  }
}
