import 'package:flutter/material.dart';

class Taskstack2 extends StatelessWidget {
  const Taskstack2({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: Stack(
            clipBehavior: Clip.none,
          children: [
            Container(
                height:300 ,width:300,
                
                    //child: Text("Container 2",style: TextStyle(color: Colors.white),)),
                
               
                decoration: BoxDecoration( color: Colors.red,
                  boxShadow: [ BoxShadow(
                      blurRadius: 30,
             offset: Offset(10, 10),)],
                ),
                
              
              child: Stack(
                children: [
                 Positioned(
                  right: 10,
                  bottom: 100,
                   child: RotatedBox(
                    quarterTurns: 3,
                    child: Text("Container 1",style: TextStyle(color: Colors.white),)),
                 )
                
                ]

              )
            ),


//container green2=>        
               Positioned(
              top: -20,
              left: -30,
                 child: Container(
                  height:250 ,width: 250,
                 
                    decoration: BoxDecoration(  color: Colors.green,
                    boxShadow: [ BoxShadow(
                        blurRadius: 30,
                      offset: Offset(10, 10),)],
                  ),
                  
                    child: Stack( children: [
                      Positioned(
                        bottom: 10,
                        left: 100,
                        child: Text("Container 2",style: TextStyle(color: Colors.white),)),
                             ] ),
                  
                             ),
               ),

               //container Blue 3=>
               Positioned(
                right: 30,
                top: -50,
                 child: Container(
                  height:200 ,width: 200,
                     decoration: BoxDecoration( color: Colors.blue,   
                    boxShadow: [ BoxShadow(
                        blurRadius: 30,
                              offset: Offset(10, 10),)],
                  ),
                  child: Center(child: Text("Container 3",style: TextStyle(color: const Color.fromARGB(255, 250, 250, 250)))),
                               
                               ),
               )
          ],
        ),
      ),
    );
  }
}