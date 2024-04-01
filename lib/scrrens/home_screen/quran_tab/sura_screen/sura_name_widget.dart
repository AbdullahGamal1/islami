import 'package:flutter/material.dart';

import 'sura_detailes_screen.dart';
import 'sura_details_screen_args.dart';

class SuraNameWidget extends StatelessWidget {
  String title;
  int index;

  SuraNameWidget({required this.title, required this.index});

//SuraDetailsScreenArgs يتم عرض اسامي السور وعند الضغط يتم النقل الى صفحة كل سورة عبر
// ويتم عبره نقل كل سورة باسمها ومحتواها
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeName,
            arguments: SuraDetailsScreenArgs(title: title, index: index));
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
