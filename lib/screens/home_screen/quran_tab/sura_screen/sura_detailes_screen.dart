import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/components/components.dart';
import 'package:islami/my_theme_data/my_them_data.dart';
import 'package:islami/screens/home_screen/quran_tab/sura_screen/sura_details_screen_args.dart';
import 'package:islami/screens/home_screen/quran_tab/sura_screen/verse_content.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetailsScreen';

  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> chapterContent = [];

  void readFile(int suraIndex) async {
    String text =
        await rootBundle.loadString('assets/files/quran/${suraIndex + 1}.txt');
    chapterContent = text.split('\n');
    setState(() {});
  }

  //الصفحة الخاصة بعرض محتوى السور من الايات
  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsScreenArgs;
    if (chapterContent.isEmpty) {
      readFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(MyThemeData.themeMode == ThemeMode.light
                  ? 'assets/images/bg3.png'
                  : 'assets/images/bg_dark.png'),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
            title: Text(
          args.title,
          style: Theme.of(context).textTheme.headline5,
        )),
        body: Column(
          children: [
            Expanded(
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 48.w, horizontal: 12.h),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: chapterContent.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : ListView.separated(
                        itemBuilder: (context, index) {
                          return VerseContent(
                            content: chapterContent[index],
                          );
                        },
                        itemCount: chapterContent.length,
                        separatorBuilder: (context, index) => ayaDivider(index),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
