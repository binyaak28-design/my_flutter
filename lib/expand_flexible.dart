import 'package:flutter/material.dart';

class NewTask extends StatelessWidget {
  const NewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
         Flexible(flex: 2,
            child:  Container(
              color: Colors.amber,
            ),
          ),
      Flexible(
        flex: 8,
           child: Container(
            color: Colors.black38,
           ),
         )
        ],
      ),
    );
  }
}