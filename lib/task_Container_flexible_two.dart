import 'package:flutter/material.dart';

class FlexibleTwoTask extends StatelessWidget {
  const FlexibleTwoTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: 

     //1c=>
    Column(
  children: [
  
     
    
    Flexible(flex: 4,
      child: Row( 
        children: [
          
          Flexible(
            flex: 5,
            child: Column(//1cR1C1
              children: [
                
                Flexible(flex: 8,
                  child: Row(  //1cR1C1R1
                    children: [
                       Flexible(
                        flex: 5,
                         child: Container(
                                       color: const Color.fromARGB(255, 47, 12, 245), 
                                     ),
                       ),
                        Flexible(
                      flex: 5,
                       child: Container(
                                     color: const Color.fromARGB(255, 2, 0, 10), 
                                   ),
                   
                  
                ),
                  ],
                    
                  ),
                ),
               
                    
                //1cR1C1 R1 and R2 finish
                Flexible(flex: 2,
                  child: Container(
                    color: const Color.fromARGB(255, 248, 244, 5),
                  ),
                )
                
            
              ],
            ),

           //1cR1C1 finish

            
            
          ),
      
      
         //1cR2=>
      
         Flexible(flex: 2,
          child: Container(
             color: const Color.fromRGBO(250, 249, 249, 1),
          ))
      ,
      //1cR3=>
      Flexible(
        flex: 3,
        child: Column(
      children: [
         Flexible(flex: 5,
            child: Container(
               color: const Color.fromARGB(255, 252, 3, 3),
            ))
        ,
         Flexible(flex: 5,
            child: Container(
               color: const Color.fromARGB(255, 241, 238, 3),
            ))
        ,
        
      ],
        ),
      )
        ],
      ),
    ),
   
   
      
    
  
  //1c finish

 //2c=>
Flexible(flex: 1,
  child: Row(
    children: [
      Flexible(flex: 5,
        child: Container(
        color: const Color.fromARGB(255, 247, 19, 3),  
        ),
      ),
       Flexible(flex: 5,
         child: Container(
               color: const Color.fromARGB(255, 2, 253, 14),  
               ),
       )
  
    ],
  ),
),


//3rd =====>


//3c
 Flexible(flex: 6,
      child: Row( 
        children: [
          
          Flexible(
            flex: 5,
            child: Column(//1cR1C1
              children: [
                
                Flexible(flex: 5,
                  child: Row(  //1cR1C1R1
                    children: [
                       Flexible(
                        flex: 3,
                         child: Container(
                                       color: const Color.fromARGB(255, 15, 15, 15), 
                                     ),
                       ),
                        Flexible(
                      flex: 3,
                       child: Container(
                                     color: const Color.fromARGB(255, 253, 252, 253), 
                                   ),
                                   
                   
                  
                ),
                 Flexible(
                        flex: 3,
                         child: Container(
                                       color: const Color.fromARGB(255, 15, 15, 15), 
                                     ))
                  ],
                    
                  ),
                ),
               
                    
                //1cR1C1 R1 and R2 finish
                Flexible(flex: 5,
                  child: Container(
                    color: const Color.fromARGB(255, 71, 71, 70),
                  ),
                )
                
            
              ],
            ),

           //1cR1C1 finish

            
            
          ),
      
      
         //1cR2=>
      
         Flexible(flex: 2,
          child: Container(
             color: const Color.fromRGBO(250, 249, 249, 1),
          ))
      ,
      //1cR3=>
      Flexible(
        flex: 3,
        child: Column(
      children: [
         Flexible(flex: 5,
            child: Container(
               color: const Color.fromARGB(255, 252, 3, 3),
            ))
        ,
         Flexible(flex: 5,
            child: Container(
               color: const Color.fromARGB(255, 241, 238, 3),
            ))
        ,
        
      ],
        ),
      )
        ],
      ),
    ),
   
   
      
 
  ],
)

  //2c

  

  //3c


     
    );
  }
}