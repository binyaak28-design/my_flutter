

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';

class TaskTexrtfield extends StatefulWidget {
   const TaskTexrtfield({super.key});

  @override
  State<TaskTexrtfield> createState() => _TaskTexrtfieldState();
}

class _TaskTexrtfieldState extends State<TaskTexrtfield> {
TextEditingController textEditingController=TextEditingController();
TextEditingController textEditingController2=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Center(
        
           child: Column(
            children: [
              SizedBox(height: 50,),
                 Text("Welcome Back",style: TextStyle(fontSize: 30),),
                  SizedBox(height: 10,),
                 Text("Enter your credential to login",style: TextStyle(fontSize: 15),),
                 SizedBox(height: 30,),

                 SizedBox(height: 40,width: 500,
                   child: TextField(
                    controller: textEditingController,
                    decoration: InputDecoration(prefixIcon:  Icon(Icons.person,size: 20,),
                    labelText: "username",labelStyle: TextStyle(fontSize: 15),
                    filled: true,
                     fillColor: const Color.fromARGB(255, 233, 155, 247),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                   
                    ) 
                   ),
                 ),
                   SizedBox(height: 15,),

                 SizedBox(height: 40,width: 500,
                   child: TextField(
                    controller: textEditingController2,

                    decoration: InputDecoration(prefixIcon:  Icon(Icons.lock,size: 20,),
                    labelText: "password",labelStyle: TextStyle(fontSize: 15),
                    filled: true,
                    fillColor: const Color.fromARGB(255, 233, 155, 247),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                   
                    ) 
                   ),
                 ),
                 SizedBox(height: 10,),

           ///Login button==>      
                 SizedBox(height: 30,width: 250,
                   child: ElevatedButton(onPressed: (){
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>HomePage(name: textEditingController.text,
                     password:  textEditingController2.text)));
                  
                   setState(() {//to  
                     print(textEditingController.text); 
                     
                   });
                   },
                   style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 203, 71, 226)
                   ),
                    child: Text("Login",style: TextStyle(color: Colors.white),)
                   ),
                 ),
                 SizedBox(height: 50,),
                 Text(textEditingController.text),
                 SizedBox(height: 50,),

                
                
                 TextButton(onPressed: (){
                //  Navigator.push(context, MaterialPageRoute(builder: (context)=>h))

                 },
                 style: TextButton.styleFrom(foregroundColor: Colors.purpleAccent), child: Text("Forgot password"),),

                 SizedBox(height: 50,),
                Center(
                  child: Row(
                    children: [
                      Text("Don't have an acconunt?"),
                      TextButton(onPressed: (){

                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.purpleAccent
                      ), child: Text("Sign up"),)
                    ],
                  ),
                ) 
            ],
                 ),
         ),
       
    );
  }
}