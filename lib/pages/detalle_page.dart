import 'package:flutter/material.dart';
import 'package:kiosko_app/providers/app_provider.dart';
import 'package:provider/provider.dart';

class DetallePage extends StatelessWidget {
  const DetallePage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    final appProvider = context.watch<AppProvider>();
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row( children: [
          Text(appProvider.pedidos.length.toString()),
          IconButton(
            icon: Icon(Icons.card_travel_outlined),
            onPressed: () {},
          )
          ],)
        ],
        backgroundColor: color.secondary,
        title: Text('D E T A L L E',
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
          child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(appProvider.config['comidaImagen']),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          appProvider.config['comida'],
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
   const SizedBox(height: 20,),     
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child:   Row(
    children:[ Text('Descripcion',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15))]
  ),
),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child:   Text('¡Descubre nuestra hamburguesa estrella: La Suprema Delicia! Una obra maestra gastronómica que combina los sabores más exquisitos en cada bocado. Con una jugosa y tierna carne de res cocinada a la perfección en nuestra parrilla especial, cada mordisco es una experiencia de sabor inigualable.'),
),
 const SizedBox(height: 10,),
 
 Row( children: [
  IconButton(onPressed: () {
    appProvider.adjuntarComidas(appProvider.config['comidaImagen']);
  }, icon: Icon(Icons.plus_one_rounded)), 
    
  IconButton(onPressed: () {
    
  }, icon: Icon(Icons.card_travel_outlined)),
  IconButton(onPressed: () {
    appProvider.quitarComidas(appProvider.config['comidaImagen']);
  }, icon: Icon(Icons.exposure_neg_1_outlined)), 
    
  
 ],)

      ])),
    );
  }
}
