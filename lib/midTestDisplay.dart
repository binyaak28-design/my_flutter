import 'package:flutter/material.dart';

class Midtestdisplay extends StatelessWidget {
   String imageToShow,nametoShow,priceToShow;
   Midtestdisplay({super.key, required this.imageToShow, required this.nametoShow,required this.priceToShow});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
         Image.asset(imageToShow),
         Text(nametoShow),
         Text(priceToShow)
          ],
        ),
      )
    );
     
    }}