import 'package:flutter/material.dart';

class EsquemaColor {
  // Paleta cálida más elegante
  static const Color primario = Color(0xFFEF6C00); // naranja quemado
  static const Color secundario = Color(0xFFFFA726); 
  static const Color fondo = Color(0xFFFDF8F2); // crema suave
  static const Color texto = Color(0xFF3A3A3A); // gris oscuro elegante

  static ColorScheme esquema() {
    return ColorScheme.fromSeed(
      seedColor: primario,
      brightness: Brightness.light,
    );
  }
}
