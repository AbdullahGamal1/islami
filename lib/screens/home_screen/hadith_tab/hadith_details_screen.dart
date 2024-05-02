import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/screens/home_screen/hadith_tab/hadith.dart';
import 'package:provider/provider.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeName = 'HadethDetailsScreen';

  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);

    var hadeth = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(provider.getBackGroundImage()),
                fit: BoxFit.fill)),
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                hadeth.title,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            body: Column(
              children: [
                Expanded(
                    child: Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 48.w, horizontal: 12.h),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: hadeth.content.isEmpty
                            ? const Center(child: CircularProgressIndicator())
                            : SingleChildScrollView(
                                child: Text(
                                  hadeth.content,
                                  style: Theme.of(context).textTheme.bodyText1,
                                  textAlign: TextAlign.center,
                                ),
                              )))
              ],
            )));
  }
}
