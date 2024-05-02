import 'package:flutter/material.dart';

Widget getSelectedWidget(String title, context) {
  return Row(
    children: [
      Text(title,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color: Theme.of(context).canvasColor)),
      Spacer(),
      Icon(
        Icons.check_circle_outline_rounded,
        color: Theme.of(context).canvasColor,
      )
    ],
  );
}

Widget getUnSelectedWidget(String title, context) {
  return Text(
    title,
    style: Theme.of(context).textTheme.bodyText2,
  );
}
