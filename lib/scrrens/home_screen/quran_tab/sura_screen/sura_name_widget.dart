import 'package:flutter/material.dart';

import 'sura_detailes_screen.dart';
import 'sura_details_screen_args.dart';

class SuraNameWidget extends StatelessWidget {
  String title;
  int index;
  SuraNameWidget({required this.title, required this.index});

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
