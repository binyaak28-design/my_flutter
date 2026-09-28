import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 200,width: 400,
        child: Card(
          color: Colors.amberAccent,
          
        ),
           
      ),
    );
  }
}