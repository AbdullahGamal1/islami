import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/my_theme_data/my_them_data.dart';
import 'package:islami/scrrens/home_screen/hadith_tab/hadith_tab.dart';
import 'package:islami/scrrens/home_screen/quran_tab/quran_tab.dart';
import 'package:islami/scrrens/home_screen/radio_tab/radio_tab.dart';
import 'package:islami/scrrens/home_screen/tasbeh_tab/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyThemeData.themeMode == ThemeMode.light
                  ? 'assets/images/bg3.png'
                  : 'assets/images/bg_dark.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.islami,
              style: Theme.of(context).textTheme.headline3),
        ),
        body: tabs[selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selectedTab = value;
            setState(() {});
          },
          currentIndex: selectedTab,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                    AssetImage('assets/images/moshaf_icon.png')),
                label: AppLocalizations.of(context)!.quran),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon:
                    const ImageIcon(AssetImage('assets/images/hadet_icon.png')),
                label: AppLocalizations.of(context)!.hadith),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon:
                    const ImageIcon(AssetImage('assets/images/sebha_icon.png')),
                label: AppLocalizations.of(context)!.tasbeh),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon:
                    const ImageIcon(AssetImage('assets/images/radio_icon.png')),
                label: AppLocalizations.of(context)!.radio)
          ],
        ),
      ),
    );
  }

  List<Widget> tabs = [
    const QuranTab(),
    const HadithTab(),
    const TasbehTab(),
    const RadioTab()
  ];
}
