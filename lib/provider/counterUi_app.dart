
  import 'package:flutter/material.dart';

void main(){
    runApp(const MyApp());

    
  }
  class MyApp extends StatelessWidget{
    const MyApp({super.key});

   

    @override
  Widget build(BuildContext context) {

     var counter;
    void increment(){
      counter++;
      
      

    }
    // TODO: implement build
    return Scaffold(

      body: Column(
        children: [
          Text(counter.toString()),
        

          TextButton(onPressed: (){
            increment();
            
            

          }, child: Text("+"))
        ],
      ),

    );
  }
 

  }

  