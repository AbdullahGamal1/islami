import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/components/components.dart';
import 'package:islami/scrrens/home_screen/hadith_tab/hadith.dart';
import 'package:islami/scrrens/home_screen/hadith_tab/hadith_name_widget.dart';

class HadithTab extends StatefulWidget {
  const HadithTab({super.key});

  @override
  State<HadithTab> createState() => _HadithabState();
}

class _HadithabState extends State<HadithTab> {
  List<Hadith> allHadithList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadithList.isEmpty) {
      readHadithFile();
    }
    return Center(
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Image.asset(
                  'assets/images/—Pngtree—masjid nabawi the prophet mosque_5336473.png')),
          Container(
            height: 1,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
          ),
          Text(
            'Hadith Number',
            style: Theme.of(context).textTheme.headline5,
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
              flex: 5,
              child: allHadithList.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.separated(
                      itemBuilder: (context, index) {
                        return HadithNameWidget(
                          hadith: allHadithList[index],
                        );
                      },
                      separatorBuilder: (context, index) => MyDivider(context),
                      itemCount: allHadithList.length))
        ],
      ),
    );
  }

  readHadithFile() async {
    List<Hadith> hadethList = [];
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> splittedContent = fileContent.split('#');
    for (int i = 0; i < splittedContent.length; i++) {
      String singleHadethContent = splittedContent[i];
      List<String> lines = singleHadethContent.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadith hadeth = Hadith(title: title, content: content);
      hadethList.add(hadeth);
    }
    allHadithList = hadethList;
    setState(() {});
  }
}
