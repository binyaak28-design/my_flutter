import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool is1=false;
  bool is2=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
    
      Column(
        children: [
          CheckboxListTile(value: is1,
          title: Text("click"), onChanged: (valuee){
            setState(() {
              is1=valuee!;
            });
          }),

          CheckboxListTile(value: is2,
          title: Text("click me"), onChanged: (valuee){
            setState(() {
              is2=valuee!;
            });
          })
        ],
      ),
      

    );
  }
}