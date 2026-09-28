import 'package:flutter/material.dart';
import 'package:flutter_application_1/gridView.dart';

class PopupMenuButtonInto extends StatelessWidget {
  const PopupMenuButtonInto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      //   toolbarHeight: 200,
        backgroundColor: Colors.green,
      title: Text("Pop Up Menu Button",style: TextStyle(color: Colors.white),),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 100),
          child: PopupMenuButton(

            
            itemBuilder: (context)=>
          [
            PopupMenuItem(value: 1,
            onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (context)=>GridViewTask())); 
            },child: Text("Profile"),
            
            ),
            PopupMenuItem(value: 2,
            onTap: () {
              
            },child: Text("Account"),),
            PopupMenuItem(value: 3,
            onTap: () {
          
            },child: Text("Settings"),),
            PopupMenuItem(value:4 ,child: Text("About Us"),)
          ]),
        )
      ],
      ),
    );
  }
}