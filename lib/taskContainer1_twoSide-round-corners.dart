import 'package:flutter/material.dart';

class TwoSideRoundCorners extends StatelessWidget {
  const TwoSideRoundCorners({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(title:  Text("Rounded Corners",
    style: TextStyle(color: Colors.white,fontSize: 35),
    ),
    backgroundColor: const Color.fromARGB(255, 56, 188, 240),),
      body: Center(
        child: Container(height: 100,width: 300,
        decoration:BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(40),
       bottomLeft: Radius.circular(40),
       ),
       color: const Color.fromARGB(255, 169, 46, 226)
       ),
        child: Center(
          child: Text("I am a text",style: TextStyle(color: Colors.white,fontSize: 50)
          
          ),
        ),
      )
          
        ),
    );
  
  }
}