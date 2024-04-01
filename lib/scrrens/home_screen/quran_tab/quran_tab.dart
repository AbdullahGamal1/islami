import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/scrrens/home_screen/quran_tab/sura_screen/sura_name_widget.dart';

import '../../../constance/constance.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    var hieght = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset(
            'assets/images/quranBook.png',
            fit: BoxFit.fill,
            height: hieght * .2,
            width: width * .4,
          ),
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Theme.of(context).primaryColor,
        ),
        const Text(
          'sura name',
          style: TextStyle(fontSize: 24),
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Theme.of(context).primaryColor,
        ),
        Expanded(
            flex: 3,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return SuraNameWidget(title: suraNames[index], index: index);
                },
                separatorBuilder: (context, index) => Container(
                      height: 1,
                      width: double.infinity,
                      color: Theme.of(context).primaryColor,
                    ),
                itemCount: suraNames.length))
      ],
    );
  }
}
