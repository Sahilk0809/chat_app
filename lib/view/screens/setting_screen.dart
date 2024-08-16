import 'package:chat_app/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: const Text('Setting'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          ListTile(
            leading: const Text(
              'Dark Mode',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            trailing: Switch(
              activeTrackColor: Colors.green,
              value: Provider.of<ThemeProvider>(context, listen: true).isDark,
              onChanged: (value) {
                Provider.of<ThemeProvider>(context, listen: false).setTheme();
              },
            ),
          ),
        ],
      ),
    );
  }
}
