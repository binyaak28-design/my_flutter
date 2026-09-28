import 'package:flutter/material.dart';

class SharedPreferenceTaskdisplay extends StatefulWidget {

  var nameP,emailP,addP;
  SharedPreferenceTaskdisplay({super.key ,required this.nameP,this.emailP,this.addP});

  @override
  State<SharedPreferenceTaskdisplay> createState() => _SharedPreferenceTaskdisplayState();
}

class _SharedPreferenceTaskdisplayState extends State<SharedPreferenceTaskdisplay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: SizedBox(width: 700,
          child: Card(
            color: Colors.yellow,
            elevation: 20,
            child: Column( crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Name :  ${widget.nameP}",style: TextStyle(color: Colors.black),),
                Text("Email : ${widget.emailP}",style: TextStyle(color: Colors.black)),
                Text("Address : ${widget.addP}",style: TextStyle(color: Colors.black))
              ],
            ),
          ),
        ),
      )
      ,
    );
  }
}