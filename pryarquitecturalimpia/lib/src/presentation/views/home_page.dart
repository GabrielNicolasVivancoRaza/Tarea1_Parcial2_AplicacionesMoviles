import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/operario_viewmodel.dart';
import '../routes/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();
  final _sueldoController = TextEditingController();
  final _antiguedadController = TextEditingController();

  void _calcular() {
    if (_formKey.currentState!.validate()) {
      final viewModel = Provider.of<OperarioViewModel>(context, listen: false);
      final sueldo = double.parse(_sueldoController.text);
      final antiguedad = int.parse(_antiguedadController.text);

      final resultado = viewModel.calcular(sueldo, antiguedad);

      Navigator.pushNamed(
        context,
        AppRoutes.resultado,
        arguments: resultado,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cálculo de Aumento'),
        centerTitle: true,
        leading: const Icon(Icons.calculate_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Icon(Icons.person_outline, size: 80, color: Colors.deepOrange),
              const SizedBox(height: 12),
              const Text(
                'Ingrese los datos del operario',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),

              // SUELDO
              TextFormField(
                controller: _sueldoController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Sueldo actual',
                  prefixIcon: Icon(Icons.attach_money),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese el sueldo';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Ingrese un número válido';
                  }
                  if (double.parse(value) < 0) {
                    return 'El sueldo debe ser positivo';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 20),

              // ANTIGÜEDAD
              TextFormField(
                controller: _antiguedadController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Antigüedad (años)',
                  prefixIcon: Icon(Icons.calendar_month_outlined),
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese la antigüedad';
                  }
                  if (int.tryParse(value) == null) {
                    return 'Ingrese un número entero válido';
                  }
                  if (int.parse(value) < 0) {
                    return 'La antigüedad debe ser positiva';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 32),

              ElevatedButton.icon(
                onPressed: _calcular,
                icon: const Icon(Icons.trending_up),
                label: const Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Text(
                    'Calcular Aumento',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
