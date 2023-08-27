import 'package:flutter/material.dart';
import 'package:kiosko_app/models/locales.dart';
import 'package:kiosko_app/providers/app_provider.dart';
import 'package:provider/provider.dart';

class CardRestaurants extends StatelessWidget {
  final Local locales;

  const CardRestaurants({super.key, required this.locales});

  @override
  Widget build(BuildContext context) {
    final appProvider = context.watch<AppProvider>();
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/productos');
        appProvider.dataInternaSet(locales.nombre,  locales.imagenPath);
      },
      child: Container(
        
        margin: const EdgeInsets.only(left: 25),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              locales.imagenPath,
              height: 140,
            ),
            Text(
              locales.nombre,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
                width: 140,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      locales.tiempo,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey[700]),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                        ),
                        Text(
                          locales.rating,
                          style: const TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
