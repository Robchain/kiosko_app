import 'package:flutter/material.dart';
// import 'package:kiosko_app/models/comidas.dart';

class AppProvider extends ChangeNotifier{


  Map config={
    'opcionColor':1,
    'Titulo':'',
    'Imagen':'lib/img/banner1.jpeg',
    'comida':'',
    'precio':'',
    'comidaImagen':'lib/img/banner1.jpeg'
  };
  
  List pedidos=[
      
  ];




void colorChange(bool numero){

 config['opcionColor'] = numero ? 1 : 2;

notifyListeners();
}


void dataInternaSet(String titulo, String image){

 config['Titulo'] = titulo;
 config['Imagen'] = image;

notifyListeners();

}
void datacomida(String comida, String precio, String comidaImagen){

 config['comida'] = comida;
 config['precio'] = precio;
 config['comidaImagen'] = comidaImagen;

notifyListeners();

}




void adjuntarComidas(String comidas){
   
   pedidos.add(comidas);

notifyListeners();

}
void quitarComidas(String comidas){
   
   pedidos.remove(comidas);

notifyListeners();

}

}