import 'package:flutter/material.dart';

class GradientTask extends StatelessWidget {
  const GradientTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(flex: 7,
            child: Container( height : 200,
                    width: 200,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Colors.purple
                    
                  )),
                  
          ),
          Flexible(flex: 3,
            child: Container( height : 80,
                    width: 200,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                    color: Colors.blue
                    
                  )),)
      ])
    );
  }
}