import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/components/components.dart';
import 'package:islami/scrrens/home_screen/quran_tab/sura_screen/sura_details_screen_args.dart';
import 'package:islami/scrrens/home_screen/quran_tab/sura_screen/verse_content.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'SuraDetailsScreen';

  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> chapterContent = [];

  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsScreenArgs;
    if (chapterContent.isEmpty) {
      readFile(args.index);
    }
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(title: Text(args.title)),
        body: Column(
          children: [
            Expanded(
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24)),
                child: chapterContent.isEmpty
                    ? CircularProgressIndicator()
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

  void readFile(int suraIndex) async {
    String text =
        await rootBundle.loadString('assets/files/${suraIndex + 1}.txt');
    chapterContent = text.split('\n');
    setState(() {});
  }
}
