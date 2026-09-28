import 'package:flutter/material.dart';

class Popup extends StatefulWidget {
  const Popup({super.key});

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PopupMenuButton(itemBuilder: (context)=>[
PopupMenuItem(child: Text("hii"),
value:1 ,
onTap: (){
  
},)
      ]
      
      )
    );
  }
}