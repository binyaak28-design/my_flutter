import 'package:flutter/material.dart';

class TaskFlexibleOne extends StatelessWidget {
  const TaskFlexibleOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
     Column(
      children: [
        Flexible(
          flex: 5,
          child: Row(
            
            children: [
             
              
             Flexible(
              flex: 5,
               child: Container(
                 color: const Color.fromARGB(255, 245, 20, 4),
                         
                       )
                        
                       ,
                       
             ),
             Flexible(
              flex: 5,
               child: Column(
                children: [
                        Flexible(
                          flex: 5,
                          child: Container(
                                           color: const Color.fromARGB(255, 143, 6, 235),
                             
                             ),
                        ),
                           Flexible(
                            flex: 5,
                             child: Container(
                              
                                               
                                               decoration: BoxDecoration(color: const Color.fromARGB(255, 23, 20, 27),border: Border.all( 
                                                 color: const Color.fromARGB(255, 143, 6, 235),width: 1.5),)
                             ),
                           
                           )
                           ]
                         ),
             )
            ]
          ),
        )
       ,
        Flexible(
          flex: 5,
          child: Container(
            color: const Color.fromARGB(255, 238, 255, 7),
          ),
        )
      ],
     ) ,
    );
  }
}