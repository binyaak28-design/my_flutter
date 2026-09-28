import 'package:flutter/material.dart';

class CheckboxInro extends StatefulWidget {
  const CheckboxInro({super.key});

  @override
  State<CheckboxInro> createState() => _CheckboxInroState();
}

class _CheckboxInroState extends State<CheckboxInro> {
  bool isChecked1=false;
 bool  isChecked2=false;
 bool  isChecked3=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        children: [
          CheckboxListTile(title: Text("Accept Terms and  Conditions"),
            value: isChecked1, 
          onChanged:(value){
            setState(() {
              isChecked1=value!;
            });
          }),
       
          CheckboxListTile(title: Text("Accepts Terms"),
            value: isChecked2,
             onChanged: (value){
              setState(() {
                
                isChecked2=value!;
              });
             }),
               CheckboxListTile(title: Text("Accepts Conditions"),
            value: isChecked3,
             onChanged: (value){
              setState(() {
                
                isChecked3=value!;
              });
             }),
             Text("Checked values are ${isChecked1
                  ? "Option 1, "
                  : " "}${isChecked2 ? "Option 2, " : ""}${isChecked3 ? "Option3 , " : ""}",)
        ],
      ),
    );
  }
}