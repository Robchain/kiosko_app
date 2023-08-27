import 'package:flutter/material.dart';

class PagoPage extends StatelessWidget {
  const PagoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color.secondary,
        title:  Text('PAGO'),
      ),
    );
  }
}