import 'package:flutter/material.dart';
import 'package:kiosko_app/components/my_list_title.dart';
import 'package:firebase_auth/firebase_auth.dart';
class MyNavBar extends StatelessWidget {
  final void Function()? onSetting;

  
  const MyNavBar({super.key, required this.onSetting});



  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Drawer(
      backgroundColor:color.secondary,
      child:  Column(
        children: [
           const DrawerHeader(
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 64,
              )),
              MyListTitle(icon:Icons.home, text:'I N I C I O', onTap: (){

                Navigator.pop(context);
              },),
              MyListTitle(icon:Icons.settings, text:'A J U S T E S', onTap:onSetting,),
               MyListTitle(icon:Icons.logout, text:'S A L I R', onTap:signUserOut,),
          
        ],
      ),
    );
  }
}
