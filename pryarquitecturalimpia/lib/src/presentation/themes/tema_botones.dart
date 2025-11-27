import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaBotones {
  static ElevatedButtonThemeData crear() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: EsquemaColor.primario,
        foregroundColor: Colors.white,
        elevation: 4,
        shadowColor: EsquemaColor.primario.withOpacity(0.5),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
