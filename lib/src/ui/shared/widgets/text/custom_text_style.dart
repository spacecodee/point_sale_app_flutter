import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle {
  static TextStyle textStyle(double fontSize, Color color, bool isBold) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      fontFamily: GoogleFonts.poppins().fontFamily,
    );
  }
}
