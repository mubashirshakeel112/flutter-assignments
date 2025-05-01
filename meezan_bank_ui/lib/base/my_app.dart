import 'package:flutter/material.dart';
import 'package:meezan_bank_ui/components/app_theme.dart';
import 'package:meezan_bank_ui/screens/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
    );
  }
}