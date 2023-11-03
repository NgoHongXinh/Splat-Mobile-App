import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle headerTextStyle() {
    return GoogleFonts.signikaNegative(
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }

  static TextStyle logoName() {
    return GoogleFonts.sofia(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    );
  }

  static TextStyle headerInfoTextStyle(
      {double fontSize = 30, Color color = Colors.black54}) {
    return GoogleFonts.roboto(
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
      color: color,
    );
  }

  static TextStyle normalHeaderTextStyle() {
    return GoogleFonts.saira(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black54,
    );
  }
  static TextStyle normalTextStyle() {
    return GoogleFonts.saira(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Colors.black54,
    );
  }
  static TextStyle textNumber() {
    return GoogleFonts.roboto(
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: Colors.black54,
    );
  }
}
