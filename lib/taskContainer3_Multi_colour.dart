import 'package:flutter/material.dart';

class   TwoColour extends StatelessWidget {
  const   TwoColour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(height: 100,width: 250,
       
             
        
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
          //color: Colors.blueAccent,
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 177, 230, 243),
              Colors.lightBlueAccent,
              
            ],
            stops: [0.7,.7],  
            begin: Alignment.centerLeft,
              end: Alignment.centerRight,

          )
               
            
            ),
           
         child: Positioned(left: 40,top: 30,
          child: Text("Challenge",style: TextStyle(color: Colors.white,fontSize: 30,),)))), 
        
        
      
    );
  }
}