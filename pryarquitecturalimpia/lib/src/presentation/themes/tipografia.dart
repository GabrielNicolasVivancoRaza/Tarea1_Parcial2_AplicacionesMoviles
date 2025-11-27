import 'package:flutter/material.dart';

class TipografiaApp {
  static const String fuente = "Roboto";

  static TextTheme crear(Color color) {
    return TextTheme(
      headlineLarge: TextStyle(
        fontFamily: fuente,
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: color,
        letterSpacing: -0.5,
      ),
      headlineMedium: TextStyle(
        fontFamily: fuente,
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: color,
      ),
      bodyLarge: TextStyle(
        fontFamily: fuente,
        fontSize: 18,
        height: 1.4,
        color: color,
      ),
      bodyMedium: TextStyle(
        fontFamily: fuente,
        fontSize: 16,
        height: 1.4,
        color: color,
      ),
      labelLarge: TextStyle(
        fontFamily: fuente,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: color,
      ),
    );
  }
}
