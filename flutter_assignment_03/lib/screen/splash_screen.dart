import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_assignment_03/screen/login.dart';

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
        MaterialPageRoute(builder: (context) => Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF4157FF),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/splash_screen_top.png",
              color: Color(0xFF3D50E7),
            ),
          ),
          Positioned(
            top: 180,
            left: 0,
            right: 0,
            bottom: 40,
            child: Image.asset(
              "assets/images/splash_screen_center.png",
              fit: BoxFit.cover,
              color: Color(0xFF3D50E7),
            ),
          ),
          Positioned.fill(
            top: 160,
            left: 0,
            right: 0,
            child: Image.asset(
              "assets/images/splash_screen_bottom.png",
              color: Color(0xFF3D50E7),
            ),
          ),
          Positioned(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 74,
                    height: 74,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF000000).withAlpha(30),
                          spreadRadius: 0,
                          blurRadius: 12,
                          offset: Offset(0, 11), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Image.asset("assets/images/logo.png"),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Quick Medical",
                    style: TextStyle(
                      fontFamily: "Overpass",
                      fontSize: 28,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFFFFFFF),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Container(
      //         width: 74,
      //         height: 74,
      //         decoration: BoxDecoration(
      //           color: Color(0xFFFFFFFF),
      //           shape: BoxShape.circle,
      //           boxShadow: [
      //             BoxShadow(
      //               color: Color(0xFF000000).withAlpha(30),
      //               spreadRadius: 0,
      //               blurRadius: 12,
      //               offset: Offset(0, 11), // changes position of shadow
      //             ),
      //           ],
      //         ),
      //         child: Padding(
      //           padding: const EdgeInsets.all(12),
      //           child: Image.asset("assets/images/logo.png"),
      //         ),
      //       ),
      //       SizedBox(height: 16),
      //       Text(
      //         "Quick Medical",
      //         style: TextStyle(
      //           fontFamily: "Overpass",
      //           fontSize: 28,
      //           fontWeight: FontWeight.w300,
      //           color: Color(0xFFFFFFFF),
      //           fontStyle: FontStyle.italic,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
