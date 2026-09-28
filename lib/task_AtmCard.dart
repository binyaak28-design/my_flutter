import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskAtmcard extends StatelessWidget {
  const TaskAtmcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
      child: SizedBox(height: 300,
                     width: 500,
          child: Card(
            clipBehavior: Clip.antiAlias,
            
           
    child: Center(
      child: Stack(
        children: [
        
          
   Positioned.fill(
  child: Image.asset(
   // "asset/605A2037 (1).JPGf.jpg",
           "asset/gradient for atmCard.jpg",
    // height: double.infinity,width: double.infinity,
      fit: BoxFit.cover,
                          
        ),
         ),
                    
                  
      Container(  
       ),
         
         
      
       Stack(
             children: [
             Positioned(top: 20,left: 40,
       child: Text("Visa Platinum",style: TextStyle(color: Colors.white,fontSize: 35,fontStyle: FontStyle.normal),)),
             
             Positioned(top: 140,left: 40,
       child: Text("4000 1234 5678 8010",
       style: GoogleFonts.shareTechMono(color: const Color.fromARGB(255, 248, 247, 247),fontSize: 35,),)),
       
        Positioned(top: 180,left: 40,
       child: Text("4000",style: GoogleFonts.shareTechMono(color: Colors.white,fontSize: 10),)),
       
        Positioned(top: 195,left: 150,
       child: Text("VALID\nTHRU",style: GoogleFonts.shareTechMono(color: Colors.white,fontSize: 8),)),
        Positioned(top: 240,left: 40,
       child: Text("NRITHI NAINA M",style: GoogleFonts.shareTechMono(color: Colors.white,fontSize: 23),)),
        Positioned(top: 189,left: 180,
       child: Text("12/20",style: TextStyle(color: Colors.white,fontSize: 25),)),


      ///IMAGES===>

       Positioned(top: 160,right: 20,
         child: Image.asset(
          height: 150,width: 150,
          "asset/visa_logoss.png"),
          
          
       ),
        Positioned(top: 100,left: 40,
         child: Image.asset(
          height: 40,width: 80,
           "asset/chip.png"
          ),
        ),
          Positioned(top: 90,left: 90,
         child: Image.asset(
          height: 60,width: 100,
          "asset/wireless.png"
         ),
        ),

         
             ],
            
              )
      
        ],
            ),
    ),
      
     )
    
        ),
      ),
    );
  }
}