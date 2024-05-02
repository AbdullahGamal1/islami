import 'package:flutter/material.dart';

class ShowThemeBottomSheet extends StatelessWidget {
  const ShowThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }

  void showThemeMenu(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
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
                Text(
                  'Theme Options',
                  style: Theme.of(context)
                      .textTheme
                      .headline5, // Use appropriate theme text style
                ),
                const SizedBox(height: 10.0), // Consistent spacing
                ListTile(
                  // Use ListTile for actionable items
                  title: Text(
                    'Dark Mode',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.copyWith(color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.pop(context); // Close the bottom sheet
                  },
                ),
                const SizedBox(height: 10.0),
                ListTile(
                  // Add another option if needed
                  title: Text(
                    'Light Mode',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
