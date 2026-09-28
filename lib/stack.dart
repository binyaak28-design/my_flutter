import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
     children: [
      Container(
        height: 100,width: 150,color: Colors.amber,
      ),
       Container(
        height:80 ,width: 80,
      
        color: Colors.blueAccent,
      ),

      Positioned(top: 10,
        child: Container(
          height:40 ,width: 60,
          
          color: const Color.fromARGB(255, 255, 68, 155),
        ),
      )
     ],   
      )
    );
  }
}