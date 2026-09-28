import 'package:flutter/material.dart';

class ShadowTask extends StatelessWidget {
  const ShadowTask({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

  
      appBar: AppBar(title:  Text("Shadow",
    style: TextStyle(color: Colors.white,fontSize: 35),)
    ,
    backgroundColor: const Color.fromARGB(255, 133, 209, 240),),
  
   body: Center(
     child: Container(height: 100,width: 250,
    
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
    // border: Border.all(color: const Color.fromARGB(255, 14, 74, 185),width: 1),
   boxShadow: [ BoxShadow(
     offset: Offset(10, 10),
            color: const Color.fromARGB(255, 107, 141, 190),
            blurRadius: 15,
          ),] , color: const Color.fromARGB(255, 94, 185, 238)),
    child: Center(child: Text("I am a text",style: TextStyle(fontSize: 45,color: const Color.fromARGB(255, 14, 74, 185)),)),
     ),
   ),   
    );
  }
}