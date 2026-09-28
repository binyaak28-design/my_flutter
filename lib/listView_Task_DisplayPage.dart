import 'package:flutter/material.dart';

class DisplayImageScreen extends StatelessWidget {
   String imagetoshow;

   DisplayImageScreen({super.key, required this.imagetoshow});
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
    Center(
      child: SizedBox(height: 400,width: 600,
        child: Image.asset(imagetoshow,
        fit: BoxFit.fill,),
      ),
    )
    );
  }
}