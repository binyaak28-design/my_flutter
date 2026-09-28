import 'package:flutter/material.dart';

class ImageAsset extends StatelessWidget {
  const ImageAsset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: SizedBox(
          child: Image.asset("asset/container task1.png")),
           // child: Image.asset("flutter_application_1/asset/salad.jpg")),
      ),
      
    );
  }
}