import 'package:flutter/material.dart';
import 'package:kiosko_app/components/my_listtile.dart';
import 'package:kiosko_app/models/comidas.dart';
import 'package:kiosko_app/providers/app_provider.dart';
import 'package:provider/provider.dart';

class ProductoApp extends StatelessWidget {
  const ProductoApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    List Comidalista = [
    Comidas(
        nombre: 'Hamburgesas',
        precio: '5',
        imagen: 'lib/img/sabrosa-hamburguesa-aislada-sobre-fondo-blanco-comida-rapida-hamburguesa-fresca-carne-queso.jpg'),
    Comidas(
        nombre: 'Salchipapas',
        precio: '5',
        imagen: 'lib/img/banner1.jpeg',
        ),
        Comidas(
        nombre: 'Papi pollo',
        precio: '3',
        imagen: 'lib/img/papas-fritas-pollo-frito-placa-madera.jpg',
        ),
         Comidas(
        nombre: 'Porcion de Papas',
        precio: '4.2',
        imagen: 'lib/img/patatas-fritas-crujientes-salsa-tomate-mayonesa.jpg',
        )
  ];
    final color = Theme.of(context).colorScheme;
    final appProvider = context.watch<AppProvider>();
    return Scaffold(
      appBar: AppBar(
         actions: [
          Row(
            children: [
                Text(appProvider.pedidos.length.toString()),
          IconButton(icon: Icon(Icons.card_travel_outlined), onPressed: () {
          },)
            ],
          ),
          
        ],
        backgroundColor: color.secondary,
        title: Text(appProvider.config['Titulo'],
            style: TextStyle(
              color: Colors.grey[900],
              fontSize: 23,
            )),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
          child: Column(
        children: [
          Expanded(child: ListView.builder(
            itemCount: Comidalista.length,
            itemBuilder: (context, index) {
              return MyListTitle(
                 comidas:Comidalista[index],);
            },
          ))
        ],
      )),
    );
  }
}
