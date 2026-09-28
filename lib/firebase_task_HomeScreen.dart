import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_task_LoginPage.dart';

class FirebaseTaskHomescreen extends StatelessWidget {
  const FirebaseTaskHomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.cyanAccent,
        appBar: AppBar(title: Text("Restration Page",
        style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,),
      body: 
     
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: SizedBox(width: 600,height: 500,
             child: Column(
               children: [
                Text("Welcome !!",style: TextStyle(color: Colors.blue,fontSize: 40),),
                Spacer(),
                 Align(
                  alignment: Alignment.bottomRight,
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: ElevatedButton(onPressed: (){
                      FirebaseAuth.instance.signOut().then((value){
                        print("Signed out");
                      
                     Navigator.pop(context);});
                             },
                             style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green
                             ),
                             
                      child: Text("Log out")),
                   ),
                 ),
               ],
             ),
           ),
         )
      
      ,
    //  backgroundColor: const Color.fromARGB(213, 168, 227, 250),
 
    );
  }
}