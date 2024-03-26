import 'package:flutter/material.dart';
import 'package:islami/scrrens/home_screen/hadeth_tab/hadeth_tab.dart';
import 'package:islami/scrrens/home_screen/quran_tab/quran_tab.dart';
import 'package:islami/scrrens/home_screen/radio_tab/radio_tab.dart';
import 'package:islami/scrrens/home_screen/tasbeh_tab/tasbeh_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'HomeScreen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Islami'),
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
                label: 'Quran'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon:
                    const ImageIcon(AssetImage('assets/images/hadet_icon.png')),
                label: 'Hadeth'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon: const ImageIcon(
                    AssetImage('assets/images/moshaf_icon.png')),
                label: 'Tasbeh'),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).primaryColor,
                icon:
                    const ImageIcon(AssetImage('assets/images/radio_icon.png')),
                label: 'Radio')
          ],
        ),
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    const HadethTab(),
    const TasbehTab(),
    const RadioTab()
  ];
}
