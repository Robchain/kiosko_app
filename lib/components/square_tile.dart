import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {

final String imageurl;
  const SquareTile({super.key, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return Container(
padding:  EdgeInsets.all(20),
decoration: BoxDecoration(border: Border.all(color: Colors.white), borderRadius: BorderRadius.circular(16), color: Colors.grey[200]),
child: Image.asset(imageurl, height: 40,),
    );
  }
}