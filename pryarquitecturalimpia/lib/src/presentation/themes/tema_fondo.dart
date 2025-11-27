import 'package:flutter/material.dart';
import 'esquema_color.dart';

class TemaFondo {
  static BoxDecoration decoracion() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          EsquemaColor.fondo,
          EsquemaColor.fondo.withOpacity(0.95),
        ],
      ),
    );
  }
}
