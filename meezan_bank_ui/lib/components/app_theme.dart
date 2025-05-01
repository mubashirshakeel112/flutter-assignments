import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.roboto(
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Color(0xFF000000),
          ),
        ),
        titleLarge: GoogleFonts.roboto(
          textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        titleMedium: GoogleFonts.roboto(
          textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        titleSmall: GoogleFonts.roboto(
          textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
