import 'package:flutter/material.dart';
import '../core/responsive_config.dart';

class ResponsiveBox extends StatelessWidget {
  final String label;
  final Color color;

  const ResponsiveBox({super.key, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    final r = ResponsiveConfig(context);

    return Container(
      width: r.isPortrait ? r.wp(80) : r.wp(40),
      height: r.isPortrait ? r.hp(10) : r.hp(20),
      color: color,
      alignment: Alignment.center,
      margin: const EdgeInsets.all(10),
      child: Text(
        "${r.isPortrait ? "Portrait" : "Landscape"}\n$label",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: ResponsiveConfig.font(context, 16), // ✅ fixed
          color: Colors.white,
        ),
      ),
    );
  }
}
