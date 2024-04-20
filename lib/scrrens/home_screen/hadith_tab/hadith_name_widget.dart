import 'package:flutter/material.dart';
import 'package:islami/scrrens/home_screen/hadith_tab/hadith.dart';
import 'package:islami/scrrens/home_screen/hadith_tab/hadith_details_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class HadithNameWidget extends StatelessWidget {
  Hadith hadith;

  HadithNameWidget({super.key, required this.hadith});
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
