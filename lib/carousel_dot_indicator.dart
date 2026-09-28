import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSlideDot extends StatefulWidget {
  const CarouselSlideDot({super.key});

  @override
  State<CarouselSlideDot> createState() => _CarouselSlideIntroState();
}

class _CarouselSlideIntroState extends State<CarouselSlideDot> {
  int _currentIndex = 0;

  final List<String> imgList = [
    'asset/chicken tikka masala pizza.jpg',
    'asset/delhi.jpg',
    'asset/fruitsalad.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CarouselSlider(
            items: imgList.map((imgPath) {
              return Image.asset(imgPath, fit: BoxFit.cover, width: double.infinity);
            }).toList(),
            options: CarouselOptions(
              autoPlay: true,
              height: 250,
              enlargeCenterPage: true,
              autoPlayAnimationDuration: const Duration(seconds: 2),
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                }) ;
              },
            ),
          ), 
          const    SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: imgList.asMap().entries.map((entry) {
              return Container(
                width: 8.0,
                height: 8.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == entry.key
                      ? Colors.red
                      : Colors.grey,
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
