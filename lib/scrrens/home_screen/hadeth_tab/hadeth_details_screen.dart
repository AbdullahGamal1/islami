import 'package:flutter/material.dart';
import 'package:islami/scrrens/home_screen/hadeth_tab/hadeth.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'HadethDetailsScreen';

  const HadethDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var hadeth = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
        child: Scaffold(
            appBar: AppBar(
              title: Text(hadeth.title),
            ),
            body: Column(
              children: [
                Expanded(
                    child: Card(
                        color: Colors.white,
                        margin:
                            EdgeInsets.symmetric(vertical: 48, horizontal: 12),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        child: hadeth.content.isEmpty
                            ? Center(child: CircularProgressIndicator())
                            : Text('${hadeth.content}')))
              ],
            )));
  }
}
