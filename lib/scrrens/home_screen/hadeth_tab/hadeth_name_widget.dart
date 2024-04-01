import 'package:flutter/material.dart';
import 'package:islami/scrrens/home_screen/hadeth_tab/hadeth.dart';
import 'package:islami/scrrens/home_screen/hadeth_tab/hadeth_details_screen.dart';

class HadethNameWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethNameWidget({required this.hadeth});

//SuraDetailsScreenArgs يتم عرض اسامي السور وعند الضغط يتم النقل الى صفحة كل سورة عبر
// ويتم عبره نقل كل سورة باسمها ومحتواها
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routeName,
            arguments: hadeth);
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          hadeth.title,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
