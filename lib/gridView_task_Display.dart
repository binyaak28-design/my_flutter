import 'package:flutter/material.dart';

class GridviewTaskDisplay extends StatelessWidget {
  var imageGrid,pizzaNames;
  GridviewTaskDisplay({super.key,  required this.imageGrid,this.pizzaNames});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(imageGrid),
            SizedBox(height: 40,),
            Text(pizzaNames,style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}