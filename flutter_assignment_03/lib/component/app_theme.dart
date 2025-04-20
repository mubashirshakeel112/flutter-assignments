import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontFamily: "Overpass",
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFF090F47),
          letterSpacing: 0,
        ),
        titleMedium: TextStyle(
          fontFamily: "Overpass",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xFF090F47).withAlpha(85),
          letterSpacing: 0,
        ),
      ),
    );
  }
}
