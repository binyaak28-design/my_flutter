import 'package:flutter/material.dart';

class GridViewTask extends StatelessWidget {
  const GridViewTask ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       GridView.count(crossAxisCount: 3,
       crossAxisSpacing: 10,
       mainAxisSpacing: 10,
       children: [
        Container(
          height: 200,width: 200,
          color: Colors.amber,
        ),
          Container(
          height: 200,width: 200,
          color: const Color.fromARGB(255, 61, 4, 99),
        ),  Container(
          height: 200,width: 200,
          color: const Color.fromARGB(255, 255, 7, 152),
        ),
          Container(
          height: 200,width: 200,
          color: const Color.fromARGB(255, 2, 2, 2),
        ),
          Container(
          height: 200,width: 200,
          color: const Color.fromARGB(255, 7, 255, 7),
        ),


       ],)

      
    );
  }
}