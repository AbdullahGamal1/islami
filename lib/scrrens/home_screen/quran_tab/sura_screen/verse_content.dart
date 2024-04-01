import 'package:flutter/material.dart';

class VerseContent extends StatelessWidget {
  String content;

  VerseContent({super.key, required this.content});

//طريييقة عرض محتوى الاية
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        content,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
