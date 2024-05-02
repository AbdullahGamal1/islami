import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:islami/screens/home_screen/settings_tab/language_bottom_sheet.dart';
import 'package:islami/screens/home_screen/settings_tab/theme_bottom_sheet.dart';
import 'package:provider/provider.dart'; // Assuming this file defines ShowThemeBottomSheet
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SettingsProvider>(context);
    final appLocal = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(height: 25.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                appLocal!.theme,
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 10.h),
              InkWell(
                onTap: () {
                  const ShowThemeBottomSheet().showThemeMenu(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Theme.of(context).canvasColor)),
                  child: Text(provider.themeMode == ThemeMode.dark
                      ? appLocal!.dark
                      : appLocal!.light),
                ),
              ),
            ],
          ),
          SizedBox(height: 25.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                appLocal!.language,
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 10.h),
              InkWell(
                onTap: () {
                  const ShowLanguageBottomSheet().showLanguageMenu(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: Theme.of(context).canvasColor)),
                  child: Text(
                      provider.languageCode == "ar" ? "العربية" : 'English'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
