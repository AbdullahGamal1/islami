import 'package:flutter/material.dart';
import 'package:islami/scrrens/home_screen/hadeth_tab/hadeth_details_screen.dart';
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
      theme: ThemeData(
          progressIndicatorTheme:
              ProgressIndicatorThemeData(color: Color(0xffB7935F)),
          cardTheme: const CardTheme(color: Colors.white),
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
        SuraDetailsScreen.routeName: (context) => const SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen()
      },
      initialRoute: SplashScreen.routName,
    );
  }
}
