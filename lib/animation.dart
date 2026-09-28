import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationIntro extends StatelessWidget {
  const AnimationIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 

        Column(
          children: [
           Lottie.network("https://lottie.host/c24e8cbd-59ac-481b-9749-9ec0c390934d/moIEUy8pbP.json"),
        Lottie.network("https://lottie.host/bb098454-1ad4-4f00-bfac-c41fd633581f/5f5zC9SpTC.json")
   
          ],
        )
      

        
    );
        
  }
}