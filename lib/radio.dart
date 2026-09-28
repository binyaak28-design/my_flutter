import 'package:flutter/material.dart';

class radiost extends StatefulWidget {
  const radiost({super.key});

  @override
  State<radiost> createState() => _radiostState();
}

class _radiostState extends State<radiost> {
  String? st;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        children: [
          RadioListTile(
            title: Text("male"),
            value: "male",
          groupValue: st,
          onChanged: ( value){
            setState(() {
              st=value!;
            });
          },),
          RadioListTile(
            title:  Text("female"),
            value: "female",
          groupValue: st,
          onChanged: (value) {
            setState(() {
              st=value!;
            });
          },
          ),
          Text("selected value is $st")
        ],
      ),

      
    );
  }
}