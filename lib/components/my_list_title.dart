import 'package:flutter/material.dart';

class MyListTitle extends StatelessWidget {
  final IconData icon;
  final String text;
final void Function()? onTap;
  const MyListTitle({super.key, required this.icon,required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: ListTile(
          leading: Icon(color: Colors.white, icon),
          onTap: onTap ,
          title: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
