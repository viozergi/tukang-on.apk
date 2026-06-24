import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const TukangOnApp());
}

class TukangOnApp extends StatelessWidget {
  const TukangOnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TUKANG ON',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}
