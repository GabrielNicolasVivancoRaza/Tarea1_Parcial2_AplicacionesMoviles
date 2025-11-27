import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/domain/usecases/calcular_aumento_usescase.dart';
import 'src/presentation/viewmodels/operario_viewmodel.dart';
import 'src/presentation/routes/app_routes.dart';

// Importa todos los temas desde index.dart
import 'src/presentation/themes/index.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => OperarioViewModel(CalcularAumentoUseCase()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aumento de saldo',
      debugShowCheckedModeBanner: false,
      theme: temaGeneral, // ✔ usamos el tema general
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
    );
  }
}
