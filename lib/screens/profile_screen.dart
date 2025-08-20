import 'package:flutter/material.dart';
import '../core/responsive_config.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = ResponsiveConfig.font(context, 16);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontSize: ResponsiveConfig.font(context, 20)),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: ResponsiveConfig.responsiveFormFields(
          context: context,
          fields: [
            _buildTextField("Name", fontSize),
            _buildTextField("Email", fontSize),
            _buildTextField("Phone", fontSize),
            _buildTextField("Address", fontSize),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
          ),
          child: Text("Save", style: TextStyle(fontSize: fontSize)),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, double fontSize) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(),
      ),
      style: TextStyle(fontSize: fontSize),
    );
  }
}
