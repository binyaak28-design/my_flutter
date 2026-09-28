import 'package:flutter/material.dart';

class WhatsappScreen extends StatelessWidget {
  const WhatsappScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("WhatsApp",style: TextStyle(color: const Color.fromARGB(255, 236, 128, 128)),),
    backgroundColor: const Color.fromARGB(255, 64, 224, 69),),
   /* body: Center(child: Text("Message",style: TextStyle(color: const Color.fromRGBO(69, 4, 31, 1),fontSize: 30,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold),)) ,backgroundColor: const Color.fromARGB(255, 23, 150, 188),);*/
   // body: Center(child: Icon(Icons.home)),);
   /* body: Column(children: [
      Icon(Icons.home,),Text("home"),Row(children: [
       Icon(Icons.abc) ,Text("data")
      ],) 
    ],),*/
    
    body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(mainAxisAlignment: MainAxisAlignment.spaceAround,crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Text("Home",style: TextStyle(color: Colors.blue,fontSize: 30),),/* SizedBox(height: 50,), */Icon(Icons.home)
          , Text("Home",style: TextStyle(color: Colors.blue,fontSize: 30),),Icon(Icons.home)
          , Text("Home",style: TextStyle(color: Colors.blue,fontSize: 30),),Icon(Icons.home)
          , Text("Home",style: TextStyle(color: Colors.blue,fontSize: 30),),Icon(Icons.home)
        
        
        ],),
         Column(mainAxisAlignment: MainAxisAlignment.spaceAround,crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          Text("Home",style: TextStyle(color: Colors.blue,fontSize: 30),),/* SizedBox(height: 50,), */Icon(Icons.home)
          , Text("Home",style: TextStyle(color: Colors.blue,fontSize: 30),),Icon(Icons.home)
          , Text("Home",style: TextStyle(color: Colors.blue,fontSize: 30),),Icon(Icons.home)
          , Text("Home",style: TextStyle(color: Colors.blue,fontSize: 30),),Icon(Icons.home)
        
        
        ],),
      ],
    ),
    
    
    
    );

  }
}