import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key, required this.changeThemeMode});

  final Function changeThemeMode;

  @override
  Widget build(BuildContext context) {
    final isBright = Theme.of(context).brightness == Brightness.light;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Dark Mode'),
            trailing: IconButton(
              icon: isBright
                  ? const Icon(Icons.dark_mode_outlined)
                  : const Icon(Icons.light_mode_outlined),
              onPressed: () => changeThemeMode(!isBright),
            ),
          ),
        ],
      ),
    );
  }
}
