import 'package:flutter/material.dart';
import 'package:flutter_application_1/new_task_webpage.dart';

class Taskbuttons extends StatelessWidget {
  const Taskbuttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()
        {


        },
        child: Icon(Icons.add),

      ),
body: 
Positioned(left: 100,top: 100,
  child: Column(
    children: [
      Positioned(
        child: SizedBox(height: 40,width: 300,
          child:
           ElevatedButton(
          
            
            onPressed:  
          (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>NewTaskWebpage()));
            print("Button Clicked");
          
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:const Color.fromARGB(255, 191, 247, 119),
            shadowColor: const Color.fromARGB(255, 243, 33, 33),
            surfaceTintColor: const Color.fromARGB(255, 93, 16, 165),
            
            
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              
            )
            
  
          ),

          
           child: Text("submit",style: TextStyle(color: const Color.fromARGB(255, 55, 18, 224),fontSize: 17),)),
        ),
      ),


      ///outlined button
   SizedBox(height: 50,),
      OutlinedButton(onPressed: (){
       print("Outlinedbutoon clicked"); 
      },
       child:Text("Outlined button")
      ),


     
      SizedBox(height: 50,),//used for spacing between icons
       ///Icon button
        IconButton(onPressed: (){
         print("Icon Button clicked"); 

      }, icon: Icon(Icons.home)),


        SizedBox(height: 50,),

        ///Text Button
        TextButton(onPressed: (){

        }, child: Text("Click here..")),

       
       
         SizedBox(height: 50,),


          ///floating action button
         FloatingActionButton(onPressed: (){

         },
         child: Icon(Icons.add),) 
    ],
  ),
),


    );
  }
}