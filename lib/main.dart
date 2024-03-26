import 'package:flutter/material.dart';
import 'package:islami/scrrens/home_screen/home_screen.dart';
import 'package:islami/scrrens/home_screen/quran_tab/sura_screen/sura_detailes_screen.dart';
import 'package:islami/scrrens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Islami',
      theme: ThemeData(
          primaryColor: const Color(0xffB7935F),
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme:
              const AppBarTheme(color: Colors.transparent, centerTitle: true),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              backgroundColor: Theme.of(context).primaryColor,
              selectedItemColor: Colors.black54,
              unselectedItemColor: Colors.white)),
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        SplashScreen.routName: (context) => const SplashScreen(),
        SuraDetailsScreen.routeName: (context) => const SuraDetailsScreen()
      },
      initialRoute: SplashScreen.routName,
    );
  }
}
