import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  primaryColor: Color(0xFF0F0A0A),
  accentColor: Colors.teal,
  primaryColorLight: Colors.grey[400],
  backgroundColor: Color(0xFFF8F7F9),
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
        fontWeight: FontWeight.w700,
        letterSpacing: 0.9,
      ),
    ),
    subtitle: GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.9,
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
