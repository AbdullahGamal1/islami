import 'package:flutter/material.dart';

Widget MyDivider(context) => Container(
      height: 1,
      width: double.infinity,
      color: Theme.of(context).canvasColor,
    );

ayaDivider(index) => Text('{ ${index + 1} }');
