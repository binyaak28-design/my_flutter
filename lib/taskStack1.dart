import 'package:flutter/material.dart';

class StackTaskOne extends StatelessWidget {
  const StackTaskOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("Stack Widget",style: TextStyle(color: Colors.white),
),backgroundColor: Colors.blue,
),
      body: 
      Center(
        child: Stack(
          children: [
            Container(
              height:350 ,width:350,
              color: Colors.red,
            ),
             Container(
              height:250 ,width: 250,
              color: Colors.blue,
            ),
             Container(
              height:100 ,width: 100,
              color: Colors.green,
            )
          ],
        ),
      ),
    );
  }
}