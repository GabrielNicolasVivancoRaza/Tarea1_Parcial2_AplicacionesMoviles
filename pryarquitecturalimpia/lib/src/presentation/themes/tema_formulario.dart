import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaFormulario {
  static InputDecorationTheme crear() {
    return InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
      ),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: EsquemaColor.primario, width: 2),
      ),

      floatingLabelStyle: TextStyle(
        color: EsquemaColor.primario,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
