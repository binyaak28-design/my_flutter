import 'package:flutter/material.dart';

class ContainerTask extends StatelessWidget {
  const ContainerTask
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(height: 200,width: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: const Color.fromARGB(255, 118, 209, 236)),
      child: Center(child: Text("Hello world",style: TextStyle(color: const Color.fromARGB(255, 214, 33, 33)),
      )
      ))
      
      )
    );
  }
}