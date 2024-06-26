import 'package:flutter/material.dart';
import 'package:islami/components/bottom-sheet.dart';
import 'package:islami/providers/settings_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShowThemeBottomSheet extends StatelessWidget {
  const ShowThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  void showThemeMenu(BuildContext context) {
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
                Text(appLocal!.theme_options,
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.center),
                const SizedBox(height: 10.0),
                InkWell(
                  onTap: () {
                    provider.enableLightMode();
                  },
                  child: provider.themeMode == ThemeMode.light
                      ? getSelectedWidget(appLocal!.light, context)
                      : getUnSelectedWidget(appLocal!.light, context),
                ),
                const SizedBox(height: 10.0),
                InkWell(
                  onTap: () {
                    provider.enableDarkMode();
                  },
                  child: provider.themeMode == ThemeMode.dark
                      ? getSelectedWidget(appLocal!.dark, context)
                      : getUnSelectedWidget(appLocal!.dark, context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
