import 'package:flutter/material.dart';
import 'esquema_color.dart';
import 'tipografia.dart';
import 'tema_appbar.dart';
import 'tema_botones.dart';
import 'tema_formulario.dart';

final ThemeData temaGeneral = ThemeData(
  useMaterial3: true,
  colorScheme: EsquemaColor.esquema(),
  scaffoldBackgroundColor: EsquemaColor.fondo,

  textTheme: TipografiaApp.crear(EsquemaColor.texto),

  appBarTheme: TemaAppBar.crear(),
  elevatedButtonTheme: TemaBotones.crear(),
  inputDecorationTheme: TemaFormulario.crear(),

  cardTheme: const CardThemeData(
    elevation: 3,
    shadowColor: Colors.black12,
    surfaceTintColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)),
    ),
  ),
);
