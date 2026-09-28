import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase_task_LoginPage.dart';

class FirebaseTaskRegisterpage extends StatelessWidget {
   FirebaseTaskRegisterpage({super.key});
  TextEditingController userNamesign=TextEditingController();
   TextEditingController emailsign=TextEditingController();
   TextEditingController passwordsign=TextEditingController();
 //  TextEditingController emailsign=TextEditingController();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
 // backgroundColor: const Color.fromARGB(204, 187, 245, 247),
      appBar: AppBar(title: Center(child: Text("Sign Up ",
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
                    controller: userNamesign,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: "Username",labelStyle: TextStyle(color: Colors.white),
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
                    controller: emailsign,
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
                    controller: passwordsign,
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
                SizedBox(width: 600,
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
              ),
               SizedBox(height: 30,),
               
                Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(onPressed: (){
                        FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: emailsign.text, password: passwordsign.text)
                        .then((value){
                          print("Create a new account");
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>FirebaseTaskLoginpage()));
                        }).onError((error, stackTrace) {print("error ----$error");
                        },);
                    
                         
                      
                      },
                      style:ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                        
                      ),
                       child: Text("Sign Up",style: TextStyle(color: Colors.white),),
                      ),
                    ),


             
            ],
          ),
        ),
      ),
  
       );
  }
}