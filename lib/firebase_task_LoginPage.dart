import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_task_HomeScreen.dart';
import 'package:flutter_application_1/firebase_task_RegisterPage.dart';

class FirebaseTaskLoginpage extends StatelessWidget {
   FirebaseTaskLoginpage({super.key});
  TextEditingController emailct=TextEditingController();
  TextEditingController passct=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: const Color.fromARGB(204, 187, 245, 247),
      appBar: AppBar(title: Center(child: Text("Login Page",
      style: TextStyle(color: const Color.fromARGB(207, 255, 255, 255),fontSize: 23),)),
      backgroundColor:Color.fromARGB(76, 45, 156, 190),),
      body: 
      Center(
        child: Container(
          height: 500,width: 700,
          decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 37, 120, 175)),
          color: const Color.fromARGB(158, 64, 153, 255),
            borderRadius: BorderRadius.circular(20),
            
          ),
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 600,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: emailct,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Enter Email",labelStyle: TextStyle(color: Colors.white),
                      
                     filled: true,
                     fillColor: Colors.blueGrey,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                      ,borderSide: BorderSide(color: const Color.fromARGB(255, 154, 9, 221))
                     ) ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
                SizedBox(width: 600,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: passct,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      labelText: "Enter Password",labelStyle: TextStyle(color: Colors.white),
                     filled: true,
                     fillColor: Colors.blueGrey,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                      ,borderSide: BorderSide(color: const Color.fromARGB(255, 154, 9, 221))
                     ) ),
                  ),
                ),
              ),
               SizedBox(height: 30,),
              /*  SizedBox(width: 600,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      labelText: "Re-enter Password",labelStyle: TextStyle(color: Colors.white),
                     filled: true,
                     fillColor: Colors.blueGrey,
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)
                      ,borderSide: BorderSide(color: const Color.fromARGB(255, 154, 9, 221))
                     ) ),
                  ),
                ),
              ),*/
               SizedBox(height: 30,),
              SizedBox(width: 600,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                       FirebaseTaskRegisterpage()),);
                      
                      },
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                        
                      ),
                       child: Text("Create new",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ElevatedButton(onPressed: (){
                   FirebaseAuth.instance.
                  signInWithEmailAndPassword(
                          email: emailct.text, 
                        password: passct.text)
                        .then((value){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>
                      FirebaseTaskHomescreen()),);
                     
                        }).onError((error, stackTrace) {
                           print("Error ---${error.toString()}");
                        },);
                      
                       
                                         },
                                         style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                        
                                         ),
                       child: Text("Login",style: TextStyle(color: Colors.white),
                        ) ),
                     )
                  ],
                ),
              )
        
            ],
          ),
        ),
      ),
    );
  }
}