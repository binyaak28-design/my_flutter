import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var name,password;
  HomePage({super.key,this.name,this.password});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: Column(
          children: [
         Text(name),
        
        Text(password),
        
          ],
        ),
      )
     
    );
  }
}