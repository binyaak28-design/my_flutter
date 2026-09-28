import 'package:flutter/material.dart';

class RadioButtonIntro extends StatefulWidget {
  const RadioButtonIntro({super.key});

  @override
  State<RadioButtonIntro> createState() => _RadioButtonIntroState();
}

class _RadioButtonIntroState extends State<RadioButtonIntro> {
  String? st;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadioListTile(title: Text("Male"),
            value: "Male", 
          groupValue: st, 
          onChanged: (value){
            setState(() {
             st=value!;   
            });
          
          }),
           RadioListTile(title: Text("Female"),
            value: "Female", 
          groupValue: st, 
          
          onChanged: (fvalue){
            setState(() {
              st=fvalue!; 
            });
           
          }),
          Text("You selected $st")
        ],
      ),

    );
  }
}