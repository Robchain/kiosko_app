import 'package:flutter/material.dart';
import 'package:kiosko_app/models/comidas.dart';
import 'package:kiosko_app/providers/app_provider.dart';
import 'package:provider/provider.dart';

class MyListTitle extends StatelessWidget {
final Comidas comidas;

  const MyListTitle({super.key, required this.comidas});

  @override
  Widget build(BuildContext context) {

     final appProvider = context.watch<AppProvider>();
    return GestureDetector(
      onTap: () {
          appProvider.datacomida(comidas.nombre, comidas.precio, comidas.imagen);
        Navigator.pushNamed(context, '/detalle');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
      subtitle: Text('\$'+comidas.precio),
              title: Text(comidas.nombre),
              trailing: Image.asset(comidas.imagen),
            ),
      ),
    );
  }
}