import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/components/components.dart';
import 'package:islami/scrrens/home_screen/hadeth_tab/hadeth.dart';
import 'package:islami/scrrens/home_screen/hadeth_tab/hadeth_name_widget.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethList.isEmpty) {
      readHadethFile();
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
          const Text(
            'Hadeeth ',
            style: TextStyle(fontSize: 24),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
          ),
          Expanded(
              flex: 5,
              child: allHadethList.isEmpty
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.separated(
                      itemBuilder: (context, index) {
                        return HadethNameWidget(
                          hadeth: allHadethList[index],
                        );
                      },
                      separatorBuilder: (context, index) => MyDevider(),
                      itemCount: allHadethList.length))
        ],
      ),
    );
  }

  readHadethFile() async {
    List<Hadeth> hadethList = [];
    String fileContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> splittedContent = fileContent.split('#');
    for (int i = 0; i < splittedContent.length; i++) {
      String singleHadethContent = splittedContent[i];
      List<String> lines = singleHadethContent.trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join('\n');
      Hadeth hadeth = Hadeth(title: title, content: content);
      hadethList.add(hadeth);
    }
    allHadethList = hadethList;
    setState(() {});
  }
}
