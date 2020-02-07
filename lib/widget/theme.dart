import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  primaryColor: Color(0xFF43CEA2),
  accentColor: Color(0xFF185A9D),
  primaryColorLight: Colors.grey[400],
  primaryColorDark: Colors.grey,
  backgroundColor: Color(0xFFFFFFFF),
  textTheme: TextTheme(
    headline: GoogleFonts.merriweather(
      textStyle: TextStyle(
        fontSize: 40.0,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.9,
      ),
    ),
    title: GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    ),
    subtitle: GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
      ),
    ),
    body1: GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.normal,
      ),
    ),
  ),
);
