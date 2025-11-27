import 'package:flutter/material.dart';
import '../views/home_page.dart';
import '../views/resultado_page.dart';
import '../../domain/entities/resultado_operario.dart';

class AppRoutes{
  static const home = '/';
  static const resultado = '/resultado';

  static Map<String, WidgetBuilder> routes = {
    home: (_) => HomePage(),
    resultado: (context) {
      final resultado = ModalRoute.of(context)!.settings.arguments as ResultadoOperario;
      return ResultPage(resultado);
    }
  };
}