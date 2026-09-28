import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskAtmcardBack extends StatelessWidget {
  const TaskAtmcardBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: SizedBox(height: 350,width: 600,
          child: Card(

            clipBehavior: Clip.antiAlias,
            child: Center(
              child: Stack(


                children: [
              
                      Positioned.fill(
                        child: Image.asset(
                         "asset/605A2037 (1).JPGf.jpg",
                      
                        fit: BoxFit.cover,
                        ),
                      ),


                      Container(


                      )
                      ,
                      Stack(
                        children: [

                          Positioned(top: 10,left: 25,
                            child: Text("For customer service, call +9897-1234-5678 or +0-000-123-456",
                            style: TextStyle(color: Colors.white,fontSize: 12),)),
                          
                         Positioned(top:40 ,
                           child: Container(
                                       height: 70,width: 600,
                                  color: Colors.black,
                            
                                ),
                      ),
                    
                     Positioned(top:120 ,left: 20,
                       child: SizedBox( height: 50,width: 550,
                         child: Stack(
                            children: [
                              //   Positioned(top:120 ,left: 20,
                              // child:
                                Positioned.fill(
                                  child: Container(
                                             height: 50,width: 550,
                                        color: const Color.fromARGB(255, 240, 240, 240),
                                      ),
                                ),
                            // ),
                                     Positioned(right:15,top: 5,
                                        child: Text("123",style: GoogleFonts.aBeeZee(fontSize: 28),)),
                           
                            Positioned(top: 5,left: 5,
                           child:    Container(
                           height: 1,width:460 ,
                           color: const Color.fromARGB(255, 161, 152, 152),
                         )
                         
                            ),
                               Positioned(top: 13,left: 5,
                           child:    Container(
                           height: 1,width:460 ,
                           color: const Color.fromARGB(255, 161, 152, 152),
                         )
                         
                            ),
                               Positioned(top: 21,left: 5,
                           child:    Container(
                           height: 1,width:460 ,
                           color: const Color.fromARGB(255, 161, 152, 152),
                         )
                         
                            ),
                               Positioned(top: 29,left: 5,
                           child:    Container(
                           height: 1,width:460 ,
                           color: const Color.fromARGB(255, 161, 152, 152),
                         )
                         
                            ),
                               Positioned(top:37,left: 5,
                           child:    Container(
                           height: 1,width:460 ,
                           color: const Color.fromARGB(255, 161, 152, 152),
                         )
                         
                            ),
                             Positioned(top:45,left: 5,
                           child:    Container(
                           height: 1,width:460 ,
                           color: const Color.fromARGB(255, 161, 152, 152),
                         )
                         
                            ),
                         
                            ],  
                            ),
                       ),
                     ),
                      
                        
                          
                             Positioned(top: 200,left: 23,right: 23,
                              child: Text("Details such as the customer card number or the web address. Certain cards also have a QR code. This code, once scanned, may provide a link to the bank’s mobile application or to the website. Customers should note that each bank’s debit card will vary slightly. ",
                                style: TextStyle(color: Colors.white,fontSize: 10),),
                            ),      
                                      
                               
                          Positioned(top: 250,left: 23,right: 23,
                              child: Text(
                                "\nDetails such as the customer card number or the web address. Certain cards also have a QR code. This code, once scanned, may provide a link to the bank’s mobile application or to the website. Customers should note that each bank’s debit card will vary slightly. Certain cards issued by ICICI  ",
                                style: TextStyle(color: Colors.white,fontSize: 10),),
                            ),      
                                    
                          
                        ],
                      )
                      
                      
              
                ],


              
              ),
            )
    

            
          ),
        ),
      ),
    );
  }
}