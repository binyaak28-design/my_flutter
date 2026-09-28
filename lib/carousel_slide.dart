import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSlideIntro extends StatefulWidget {
  const CarouselSlideIntro({super.key});

  @override
  State<CarouselSlideIntro> createState() => _CarouselSlideIntroState();
}

class _CarouselSlideIntroState extends State<CarouselSlideIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items:[
        Image.asset('asset/chicken tikka masala pizza.jpg'),
        Image.asset('asset/delhi.jpg'),
        Image.asset('asset/fruitsalad.jpg'),
      ] 
      , options: 
      CarouselOptions(
        autoPlay: true,
        height: 200,
        enlargeCenterPage: true,
        autoPlayAnimationDuration: Duration(seconds: 2),
        
      )),
    );
  }
}