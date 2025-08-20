import 'package:flutter/material.dart';
import 'package:screen_responsive_mediaquery/core/responsive_config.dart';

class ResponsiveBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const ResponsiveBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedFontSize: ResponsiveConfig.font(context, 14),
      unselectedFontSize: ResponsiveConfig.font(context, 12),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        // BottomNavigationBarItem(icon: Icon(Icons.offline_bolt), label: "Cinema"),
      ],
    );
  }
}
