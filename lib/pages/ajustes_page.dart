import 'package:flutter/material.dart';
import 'package:kiosko_app/providers/app_provider.dart';
import 'package:provider/provider.dart';

class AjustesPage extends StatelessWidget {
  const AjustesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar:AppBar(
        backgroundColor: color.secondary,
        title: Text('A J U S T E S',style: TextStyle(
            color: Colors.grey[900],
            fontSize: 23,
          )),
        leading: IconButton(icon:Icon( Icons.arrow_back), onPressed: () {
          Navigator.pop(context);
        },),
      ) ,
 backgroundColor: Colors.grey[300],
      body: const Center(
        
        child: Column(
          
          children: [
            ListTile(
              title: Text('Cambiar de tema'),
              trailing:miSwitch() ,
            ),
          ],
        ),
      ),
    );
  }
}


class miSwitch extends StatefulWidget {

  const miSwitch({super.key});


  @override
  State<miSwitch> createState() => _miSwitchState();
}

class _miSwitchState extends State<miSwitch> {

bool on =true;

  @override
  Widget build(BuildContext context) {
     final appProvider = context.watch<AppProvider>();
    return Switch(value: on, onChanged: (value) {
           setState(() {
             on=value;
           });
           appProvider.colorChange(value);
          },);
  }
}