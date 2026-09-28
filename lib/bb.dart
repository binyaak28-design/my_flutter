import 'package:flutter/material.dart';

class Bb extends StatefulWidget {
  const Bb({super.key});

  @override
  State<Bb> createState() => _BbState();
}

class _BbState extends State<Bb> {
  int initilalIndex=0;
  List screens=[
    Text("Hiii"),
    Container(
      height: double.infinity,width: double.infinity,
      color: Colors.yellowAccent,
    ),
    Text("Hello")
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: initilalIndex,
        items: 
      [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: "home"),
BottomNavigationBarItem(icon: Icon(Icons.add),
label: "add"),
BottomNavigationBarItem(icon: Icon(Icons.category),
label: 'Category')
      ],
      onTap: (int index) {
        setState(() {
          initilalIndex=index;
        });
        
      },
      ),


      body: 
      screens.elementAt(initilalIndex)
      ,
    );
  }
}