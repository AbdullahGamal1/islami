import 'package:flutter/material.dart';
import 'package:islami/components/bottom-sheet.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShowLanguageBottomSheet extends StatelessWidget {
  const ShowLanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  void showLanguageMenu(BuildContext context) {
    final appLocal = AppLocalizations.of(context);

    final provider = Provider.of<SettingsProvider>(context, listen: false);
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: provider.themeMode == ThemeMode.light
                ? Colors.white
                : Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Set minimum height
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(appLocal!.language_options,
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center),
                const SizedBox(height: 10.0),
                InkWell(
                  onTap: () {
                    provider.changeLanguage("ar");
                  },
                  child: provider.languageCode == "ar"
                      ? getSelectedWidget('العربية', context)
                      : getUnSelectedWidget('العربية', context),
                ),
                const SizedBox(height: 10.0),
                InkWell(
                  onTap: () {
                    provider.changeLanguage("en");
                  },
                  child: provider.languageCode == "en"
                      ? getSelectedWidget('English', context)
                      : getUnSelectedWidget('English', context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
