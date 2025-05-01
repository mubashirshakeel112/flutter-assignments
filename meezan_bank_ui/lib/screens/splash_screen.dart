import 'dart:async';

import 'package:flutter/material.dart';
import 'package:meezan_bank_ui/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5F2585),
      body: Center(
        child: Image.asset(
          "assets/images/meezan_bank_logo.png",
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
