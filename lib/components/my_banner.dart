import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyBanner extends StatelessWidget {
  const MyBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
      
        enlargeCenterPage: true,
      ),
      items: imageSliders,)
    );
  }
}


final List<String> imgList = [
  'lib/img/banner1.jpeg',
  'lib/img/banner2.jpeg',
  'lib/img/banner3.jpg',
];



final List<Widget> imageSliders = imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.asset(item, fit: BoxFit.cover, width: 1000.0),
                    
                  ],
                )),
          ),
        ))
    .toList();
