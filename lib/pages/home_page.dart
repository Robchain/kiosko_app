import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kiosko_app/components/my_banner.dart';
import 'package:kiosko_app/components/my_cardrestaurants.dart';
import 'package:kiosko_app/components/my_navbar.dart';
import 'package:kiosko_app/models/locales.dart';
import 'package:kiosko_app/providers/app_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  List kioskos = [
    Local(
        nombre: 'Hamburgesas',
        tiempo: '21min',
        imagenPath: 'lib/img/banner2.jpeg',
        rating: '4.9'),
    Local(
        nombre: 'Comidas Rapidas',
        tiempo: '5min',
        imagenPath: 'lib/img/banner1.jpeg',
        rating: '3.5'),
         Local(
        nombre: 'Carrito abulante',
        tiempo: '10min',
        imagenPath: 'lib/img/banner3.jpg',
        rating: '4.8')
  ];

  @override
  Widget build(BuildContext context) {
         final appProvider = context.watch<AppProvider>();
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      drawer: MyNavBar(
        onSetting: () => Navigator.pushNamed(context, '/ajustes'),
      ),
      appBar: AppBar(
        actions: [
          Text(appProvider.pedidos.length.toString()),
          IconButton(icon: Icon(Icons.card_travel_outlined), onPressed: () {
            
          },)
        ],
        centerTitle: true,
        backgroundColor: color.secondary,
        title: Text(
          "Kioskos App",
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 23,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                size: 30,
                color: Colors.grey[900],
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //buscador
      const SizedBox(height: 15),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Que quieres comer hoy?",
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.white),
                borderRadius: BorderRadius.circular(20),
              )),
        ),
      ),
         const  SizedBox(
        height: 25,
      ),
      //banner de imagenes
      MyBanner(),
         const SizedBox(
        height: 10,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Text(
              "Nuevos kioskos",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
 const  SizedBox(height: 10),

      Expanded(
          child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kioskos.length,
        itemBuilder: (context, index) =>

            CardRestaurants(locales: kioskos[index]),
      )),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Text(
              "Kioskos populares",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
 const  SizedBox(height: 10),

      Expanded(
          child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kioskos.length,
        itemBuilder: (context, index) =>
            CardRestaurants(locales: kioskos[index]),
      )),
        ]),
      ),
    );
  }
}
