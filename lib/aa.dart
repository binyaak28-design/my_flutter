import 'package:flutter/material.dart';

class Aa extends StatefulWidget {
  const Aa({super.key});

  @override
  State<Aa> createState() => _AaState();
}

class _AaState extends State<Aa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      ElevatedButton(onPressed: (){

        showDialog(context: context, builder: (context)=>AlertDialog(
           title: Row(
            children: [
              Icon(Icons.delete),
              Text("Are ub sure")
            ],
           ),
           content: Text("this is no into"),
           actions: [
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("Okay")),
          
           ],

        ));
      }, child: Text("data")),
    );
  }
}