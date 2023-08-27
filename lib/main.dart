import 'package:flutter/material.dart';
import 'package:kiosko_app/config/theme/app_theme.dart';
import 'package:kiosko_app/pages/ajustes_page.dart';
import 'package:kiosko_app/pages/auth_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:kiosko_app/pages/carrito_page.dart';
import 'package:kiosko_app/pages/detalle_page.dart';
import 'package:kiosko_app/pages/home_page.dart';
import 'package:kiosko_app/pages/pago_page.dart';
import 'package:kiosko_app/pages/productos_page.dart';
import 'package:kiosko_app/providers/app_provider.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main()async{ 

WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
options: DefaultFirebaseOptions.currentPlatform,
);


runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AppProvider(),)
      ],
      child: MiApp()
    );
  }
}


class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appProvider = context.watch<AppProvider>();
    return MaterialApp(
        theme: AppTheme(selectedColor: appProvider.config['opcionColor']).theme(),
          debugShowCheckedModeBanner: false,
          title: 'Material App',
          home: const AuthPage(),
          routes: 
          {
            '/homePage':(context) =>  HomePage(),
            '/ajustes':(context) =>  AjustesPage(),
            '/pago':(context) =>  PagoPage(),
            '/productos':(context) =>  ProductoApp(),
            '/detalle':(context) =>  DetallePage(),
            '/carrito':(context) =>  CarritoPage(),
          },);
  }
}