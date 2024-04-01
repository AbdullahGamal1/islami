import 'package:flutter/material.dart';
import 'package:islami/scrrens/home_screen/hadith_tab/hadith.dart';
import 'package:islami/scrrens/home_screen/hadith_tab/hadith_details_screen.dart';

class HadithNameWidget extends StatelessWidget {
  Hadith hadith;

  HadithNameWidget({super.key, required this.hadith});

//SuraDetailsScreenArgs يتم عرض اسامي السور وعند الضغط يتم النقل الى صفحة كل سورة عبر
// ويتم عبره نقل كل سورة باسمها ومحتواها
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadithDetailsScreen.routeName,
            arguments: hadith);
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          hadith.title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
    );
  }
}
