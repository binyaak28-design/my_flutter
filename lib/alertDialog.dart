import 'package:flutter/material.dart';

class AlertdialogIntro extends StatefulWidget {
  const AlertdialogIntro({super.key});

  @override
  State<AlertdialogIntro> createState() => _AlertdialogIntroState();
}

class _AlertdialogIntroState extends State<AlertdialogIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      ElevatedButton(onPressed: (){

        
       showDialog(context: context,
        builder: (context)=> 
        AlertDialog(
          title:  Text("Alert Dialog Box"),icon: Icon(Icons.home),
          content: Text("This is Alert Message"),
           actions: [
            TextButton(onPressed: (){
             //  Navigator.of(context).pop();

            }, child: Text("Okay")),
            
            
            
             TextButton(onPressed: (){
             
            }, child: Text("Cancel"))
           ],

        ));

      }, 
      child: Text("Click for Alert Dialog") 
      ),
    );
  }
}