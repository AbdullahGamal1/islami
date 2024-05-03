import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 100.h),
        Image.asset(
            'assets/images/551-5517026_radio-vector-png-old-radio-png-vector-transparent.png'),
        SizedBox(height: 25.h),
        Text('اذاعة القران الكريم'),
        SizedBox(height: 25.h),
        Image.asset('assets/images/Group 5.png')
      ],
    );
  }
}
