
import 'package:flutter/material.dart';

class BorderRoundCorner extends StatelessWidget {
  const BorderRoundCorner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title:  Text("Rounderd Corners",
    style: TextStyle(color: Colors.white,fontSize: 35),)
    ,
    backgroundColor: const Color.fromARGB(255, 133, 209, 240),),
  
   body: Center(
     child: Container(height: 100,width: 300,
      
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
    border: Border.all(color: const Color.fromARGB(255, 14, 74, 185),width: 3)
   , color: const Color.fromARGB(255, 94, 185, 238)),
    child: Center(child: Text("I am a text",
    style: TextStyle(fontSize: 50,color: const Color.fromARGB(255, 14, 74, 185)),)),
     ),
   ),   
    );
  }
}