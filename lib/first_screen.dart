import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(title: Text("Hi Hello",style: 
    TextStyle(color: const Color.fromARGB(130, 201, 6, 6)),),backgroundColor:const Color.fromARGB(255, 59, 224, 62),),);
  }
}