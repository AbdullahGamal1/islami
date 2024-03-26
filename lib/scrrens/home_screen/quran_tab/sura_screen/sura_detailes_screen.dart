import 'package:flutter/material.dart';
import 'package:islami/scrrens/home_screen/quran_tab/sura_screen/sura_details_screen_args.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'SuraDetailsScreen';
  const SuraDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsScreenArgs;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(title: Text(args.title)),
      ),
    );
  }
}
