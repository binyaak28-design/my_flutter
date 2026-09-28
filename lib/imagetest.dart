import 'package:flutter/material.dart';

class testingimage extends StatelessWidget {
  const testingimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: SizedBox(
          child: Image.asset('asset/container task1.png')),
      ),
    );
  }
}