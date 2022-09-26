import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/theme_settings.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('Theme'),
            ),
          ),
          Consumer<ThemeSettings>(builder: (context, value, child) {
            return SwitchListTile(
                title: Text('Dark theme'), value: value.darkTheme, onChanged: (newValue) {
                  value.toggleTheme();
                });
          }),
        ],
      ),
    );
  }
}
