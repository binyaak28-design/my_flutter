import 'package:flutter/material.dart';

class DropdownButtonIntro extends StatefulWidget {
   const DropdownButtonIntro({super.key});

  @override
  State<DropdownButtonIntro> createState() => _DropdownButtonIntroState();
}

class _DropdownButtonIntroState extends State<DropdownButtonIntro> {
  String dropdownvalue='abcd';

List <String> menuitems=[
    'abcd',
    'Settings',
    'Account', 
    'Go Premium'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

     
      SizedBox(height:300,width:300,
        child: DropdownButton(
          focusColor: Colors.greenAccent,
        
          value:dropdownvalue,
          icon: Icon(Icons.arrow_drop_down),
          
            items: menuitems.map((String variabl){
            return DropdownMenuItem(
              value: variabl,
              child: Text(variabl));  
        
            }).toList(),
          onChanged: (String? value) {
            setState(() {
              
              dropdownvalue=value!;
            });
          },
            
           ),
      ),
    );
  }
}