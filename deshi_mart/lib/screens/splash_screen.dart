import 'dart:async';
import 'package:deshi_mart/screens/welcome_mart_screen.dart';
import 'package:flutter/material.dart';

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
        MaterialPageRoute(builder: (context) => WelcomeMartScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00CA44),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/mart_logo.png",
              width: 131,
              height: 141,
              fit: BoxFit.contain,
              color: Color(0xFFFFFFFF),
            ),
            SizedBox(height: 12),
            Text(
              "DESHI MART",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: 20,
                color: Color(0xFFFFFFFF),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
