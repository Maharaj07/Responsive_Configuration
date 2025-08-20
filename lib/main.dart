import 'package:flutter/material.dart';
import 'package:screen_responsive_mediaquery/screens/BookTheatreScreen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/settings_screen.dart';
import 'widgets/responsive_bottom_nav.dart';

void main() {
  runApp(const MyResponsiveApp());
}

class MyResponsiveApp extends StatefulWidget {
  const MyResponsiveApp({super.key});

  @override
  State<MyResponsiveApp> createState() => _MyResponsiveAppState();
}

class _MyResponsiveAppState extends State<MyResponsiveApp> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    ProfileScreen(),
    SettingsScreen(),
    // BookTheatre(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: ResponsiveBottomNav(
          currentIndex: _currentIndex,
          onTap: (index) => setState(() => _currentIndex = index),
        ),
      ),
    );
  }
}

// ResponsiveConfig.wp(context, 80)  gives 80% of screen width
//
// ResponsiveConfig.hp(context, 10)  gives 10% of screen height
//
// ResponsiveConfig.font(context, 16) scales font size depending on orientation