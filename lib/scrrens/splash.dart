import 'package:flutter/material.dart';

import 'home_screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routName = 'SplashScreen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context); // Capture Navigator

    Future.delayed(const Duration(seconds: 1), () {
      navigator.pushReplacementNamed(HomeScreen.routName);
    });

    return Image.asset(
      'assets/images/splash.png',
      fit: BoxFit.fill,
      height: double.infinity,
      width: double.infinity,
    );
  }
}
