import 'package:flutter/material.dart';
import 'package:flutter_assignment_03/component/app_theme.dart';
import 'package:flutter_assignment_03/screen/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme(),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
