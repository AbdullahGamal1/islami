import 'package:flutter/material.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';

import 'home_screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routName = 'SplashScreen';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context); // Capture Navigator
    var provider = Provider.of<SettingsProvider>(context);

    Future.delayed(const Duration(seconds: 1), () {
      navigator.pushReplacementNamed(HomeScreen.routName);
    });

    return Container(
      child: Image.asset(
        provider.themeMode == ThemeMode.light
            ? 'assets/images/splash.png'
            : 'assets/images/splash – 1.png',
        fit: BoxFit.fill,
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
