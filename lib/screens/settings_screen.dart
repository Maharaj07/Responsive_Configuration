import 'package:flutter/material.dart';
import '../core/responsive_config.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = ResponsiveConfig.font(context, 16);

    return Scaffold(
      appBar: AppBar(title: Text("Settings", style: TextStyle(fontSize: ResponsiveConfig.font(context, 20)))),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            leading: const Icon(Icons.notifications),
            title: Text("Notifications", style: TextStyle(fontSize: fontSize)),
            trailing: Switch(value: true, onChanged: (_) {}),
          ),
          ListTile(
            leading: const Icon(Icons.language),
            title: Text("Language", style: TextStyle(fontSize: fontSize)),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: Text("About App", style: TextStyle(fontSize: fontSize)),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
