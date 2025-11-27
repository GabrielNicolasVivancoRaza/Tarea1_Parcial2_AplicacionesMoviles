import 'package:flutter/material.dart';
import 'esquema_color.dart';
import 'tipografia.dart';

class TemaAppBar {
  static AppBarTheme crear() {
    return AppBarTheme(
      backgroundColor: EsquemaColor.primario.withOpacity(0.95),
      elevation: 6,
      shadowColor: EsquemaColor.primario.withOpacity(0.4),
      centerTitle: true,
      titleTextStyle: TipografiaApp.crear(Colors.white).headlineMedium,
    );
  }
}
