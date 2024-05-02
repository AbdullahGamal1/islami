import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget MyDivider(context) => Container(
      height: 1.h,
      width: double.infinity,
      color: Theme.of(context).canvasColor,
    );

ayaDivider(index) => Text('{ ${index + 1} }');
