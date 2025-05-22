import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      textTheme: TextTheme(
        headlineLarge: GoogleFonts.roboto(
          fontSize: 26,
          fontWeight: FontWeight.w600,
          color: Color(0xFF181725),
        ),
        titleLarge: GoogleFonts.roboto(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color(0xFFFCFCFC),
        ),
        titleMedium: GoogleFonts.roboto(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Color(0xFFB1B1B1),
        ),
        titleSmall: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: Color(0xFF828282),
        ),
        labelLarge: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFF7C7C7C),
          letterSpacing: 0,
        ),
        bodyMedium: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Color(0xFF7C7C7C),
        ),
        bodySmall: GoogleFonts.roboto(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xFF7C7C7C),
        ),
      ),
    );
  }
}
