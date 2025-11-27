import 'package:flutter/material.dart';
import '../../domain/entities/resultado_operario.dart';

class ResultPage extends StatelessWidget {
  final ResultadoOperario resultado;

  const ResultPage(this.resultado, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado'),
        centerTitle: true,
        leading: const Icon(Icons.check_circle_outline),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(Icons.receipt_long_outlined,
                size: 80, color: Colors.deepOrange),
            const SizedBox(height: 20),

            const Text(
              'Resultado del cálculo',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    _buildResultRow(
                        icon: Icons.add_chart,
                        label: 'Aumento:',
                        value: '\$${resultado.aumento.toStringAsFixed(2)}'),
                    const SizedBox(height: 16),
                    _buildResultRow(
                        icon: Icons.monetization_on_outlined,
                        label: 'Sueldo final:',
                        value: '\$${resultado.sueldoFinal.toStringAsFixed(2)}'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResultRow(
      {required IconData icon, required String label, required String value}) {
    return Row(
      children: [
        Icon(icon, color: Colors.deepOrange, size: 28),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            label,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
