import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/screens/home_screen/settings_tab/theme_bottom_sheet.dart'; // Assuming this file defines ShowThemeBottomSheet

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(height: 25.h),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Theme Mode',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 10.h),
                InkWell(
                  onTap: () {
                    // Call the correct method: ShowThemeBottomSheet().showThemeMenu(context)
                    ShowThemeBottomSheet().showThemeMenu(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(18),
                        border:
                            Border.all(color: Theme.of(context).canvasColor)),
                    child: Text('Dark'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25.h),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Language',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 10.h),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Theme.of(context).canvasColor)),
                  child: Text('English'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
