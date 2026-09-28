import 'package:flutter/material.dart';


class GradientContainerTaskNew extends StatelessWidget {
  const GradientContainerTaskNew ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
 body:
  Center(
    child: Container(
        
       height : 200,
        width: 200,
       // padding: const EdgeInsets.all(40),
        decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(30),
           gradient: LinearGradient(
             begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: 
           [
            Colors.purple
            ,Colors.blue
           ],
           stops: [.7,.7]
           )
       )
        ),
  ),
      );
  }
} 
   