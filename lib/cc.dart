import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ccc extends StatelessWidget {
ccc({super.key});
int iniitindex=0;
 List <String>imgg=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      CarouselSlider(items: imgg.map((imgges){
        return Image.asset(imgges);
        
      }).toList(),
      
      
      
      
       options: CarouselOptions(
        height: 300,
        autoPlay: true,
        onPageChanged: (index, reason) {
      
        },
       )),
    );
  }
}