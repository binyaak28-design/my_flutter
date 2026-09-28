import 'package:flutter/material.dart';

class NewTaskWebpage extends StatelessWidget {
  const NewTaskWebpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: 
      Stack(
        children: [
         /// first wave====>>
         Stack(
          children: [
        
         /// 
          ClipPath(clipper:CurvedAppBarClipper(),
          child: Container(
             height: 100,color:  const Color.fromARGB(255, 219, 237, 245)
          /*     decoration: BoxDecoration(
         //  borderRadius: BorderRadius.circular(30),
           gradient: LinearGradient(
            
            colors: 
           [
             const Color.fromARGB(255, 0, 68, 95),
           const Color.fromARGB(255, 8, 118, 161)
          , Colors.blue
            , const Color.fromARGB(255, 234, 237, 240),
           ],
            begin: Alignment.topCenter,
            

            end: Alignment.bottomCenter,
       stops: [.0,.33,0.66,1],
           )
       ),*/
             
            )
          ),

          ///second wave======>>
            ClipPath(clipper:CurvedAppBarClipper(),
          child: Container(
             height: 80,color: const Color.fromARGB(255, 143, 183, 252))),


             ///third wave======>>
               ClipPath(clipper:CurvedAppBarClipper(),
          child: Container(
             height: 60,color:  const Color.fromARGB(255, 76, 160, 243),)),

                 
          ],
         ),
  
           Positioned(top: 5,
                left: 80,
                  child: Text(
                    "GW Cards",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold)),
                ),
                  Positioned(top: 42,
                left: 100,
                  child: Text(
                    "Basic cards",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
                )


              ,
              
          //   Container(


            /*    decoration: BoxDecoration(
                    boxShadow: [ BoxShadow(
     offset: Offset(10, 10),
            color: const Color.fromARGB(255, 149, 151, 153),
            blurRadius: 15,
          ),] ,
                ),*/
             Stack(
                    children: [
                                
                  Stack(
                  
                                 children: [
                   Positioned(top: 150,left: 50,
                                           child: Image.asset(
                                    fit: BoxFit.cover,
                              height: 150,width: 200,
                            // "asset\fruitsalad.jpg"
                            "asset/salad.jpg"
                             
                           // 'asset/container task1.png'
                           //
                            ),
                                         ),
                                         
                          //  child:
                          Positioned(top: 270,left: 50,
                      child:  SizedBox(height: 150,width: 200,
                        child: Stack(
                                        children: [
                                
                                     Positioned.fill(
                                        //  top: 10,
                                          child: Container( height: 100,width: 250, 
                                           decoration: BoxDecoration( 
                                            color: const Color.fromARGB(255, 253, 253, 253),
                      boxShadow: [ BoxShadow(
                       offset: Offset(10, 10),
                              color: const Color.fromARGB(255, 149, 151, 153),
                              blurRadius: 15,
                            ),] ,  )                                                                                        
                     //  
                  
                  
                    , child: Stack(
                  
                  
                      children: [
                        Positioned(left: 10,top: 10,
                          child: Text("Fruit Salad",style: TextStyle
                          (color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),)),
                  
                  Positioned(left: 150,top: 10,
                    child: Icon(Icons.favorite_border,size: 15,color: Colors.grey,))
                  
                                , Positioned(left: 175,top: 10,
                    child: Icon(Icons.share,size: 15,)),
                    Positioned(left: 20,right: 20,top: 50,
                      child: Container(
                        height: 1,
                        color: const Color.fromARGB(255, 216, 215, 215),
                        
                      ),
                      
                    ),
                    Positioned(top: 60,
                      left: 20,right: 20,
                      child: Text("Some quick example test to build card",
                      style: TextStyle( color: const Color.fromARGB(255, 216, 215, 215),
                      fontSize: 8.5),),
                    ),
                   Positioned(bottom: 20,left: 20,
                     child: ElevatedButton(onPressed: (){
                      //showMessage(context)
                     
                     
                     }, 
                     style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.zero,
                     ),
                     padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                     ),
                     
                     child: 
                     Text("Recipie",style: TextStyle(color: Colors.white,fontSize: 9),)),
                   ),

                   ///Button

                      Positioned(bottom: 20,left: 90,
                     child: ElevatedButton(onPressed: (){
                    
                     
                     }, 
                     style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 11, 243, 107),
                        shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.zero,
                     ),
                     padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                     ),
                     
                     child: 
                     Text("Add to cart",style: TextStyle(color: Colors.white,fontSize: 9),)),
                   )
                  
                      ],
                  
                     ),
                                          ),
                                        ),
                                       ], )
                                           
                                  
                                        
                                        
                                    ),
                      ),],)   ,
                      ///second==>
                             Stack(
                  
                                 children: [
                   Positioned(top: 150,left: 300,
                                           child: Image.asset(
                                    fit: BoxFit.cover,
                              height: 150,width: 200,
                              "asset/recipie.jpg"),
                                         ),
                                         
                          //  child:
                          Positioned(top: 270,left: 300,
                      child:  SizedBox(height: 150,width: 200,
                        child: Stack(
                                        children: [
                                
                                     Positioned.fill(
                                        //  top: 10,
                                          child: Container( height: 100,width: 250, 
                                           decoration: BoxDecoration( 
                                            color: const Color.fromARGB(255, 253, 253, 253),
                      boxShadow: [ BoxShadow(
                       offset: Offset(10, 10),
                              color: const Color.fromARGB(255, 149, 151, 153),
                              blurRadius: 15,
                            ),] ,  )                                                                                        
                     //  
                  
                  
                    , child: Stack(
                  
                  
                      children: [
                        Positioned(left: 10,top: 10,
                          child: Text("Recipies",style: TextStyle
                          (color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),)),
                  
                  Positioned(left: 150,top: 10,
                    child: Icon(Icons.favorite_border,size: 15,color: Colors.grey,))
                  
                                , Positioned(left: 175,top: 10,
                    child: Icon(Icons.share,size: 15,)),
                    Positioned(left: 20,right: 20,top: 50,
                      child: Container(
                        height: 1,
                        color: const Color.fromARGB(255, 216, 215, 215),
                        
                      ),
                      
                    ),
                    Positioned(top: 60,
                      left: 20,right: 20,
                      child: Text("Some quick example test to build card",
                      style: TextStyle( color: const Color.fromARGB(255, 216, 215, 215),
                      fontSize: 8.5),),
                    ),
              /*     Positioned(bottom: 20,right: 20,
                     child: ElevatedButton(onPressed: (){
                     
                     }, 
                   style:
                    ElevatedButton.styleFrom(
                     backgroundColor: Colors.white,
                     foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                     ),
                 //    padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                     ),
                     
                     child: 
                     Text("Recipie",style: TextStyle(fontSize: 10),)),
                   )*/

                   
                   Positioned(bottom: 20,right: 10,
                    child:TextButton(onPressed: (){

                    },
                   child: Row(
                    
                   children: [
                     Text("Recipie",style: TextStyle(fontSize: 10,color: const Color.fromARGB(255, 7, 7, 7))),
                      Icon(
                      Icons.double_arrow,size: 12,
                    ),
                        ]  )
                    ,)

                    // Icon(Icons.double_arrow,size: 12,))
                   )
                      ],
                  
                     ),
                                          ),
                                        ),
                                       ], )
                                           
                                  
                                        
                                        
                                    ),
                      ),],
                      
                      
                      )   ,
                      ///third stack=>>
                       Stack(
                  
                                 children: [
                   Positioned(top: 150,left: 550,
                                           child: Image.asset(
                                    fit: BoxFit.cover,
                              height: 150,width: 200,
                              "asset/laptop.jpg"),
                                         ),
                                         
                          //  child:
                          Positioned(top: 270,left: 550,
                      child:  SizedBox(height: 150,width: 200,
                        child: Stack(
                                        children: [
                                
                                     Positioned.fill(
                                        //  top: 10,
                                          child: Container( height: 100,width: 250, 
                                           decoration: BoxDecoration( 
                                            color: const Color.fromARGB(255, 253, 253, 253),
                      boxShadow: [ BoxShadow(
                       offset: Offset(10, 10),
                              color: const Color.fromARGB(255, 149, 151, 153),
                              blurRadius: 15,
                            ),] ,  )                                                                                        
                     //  
                  
                  
                    , child: Stack(
                  
                  
                      children: [
                        Positioned(left: 10,top: 10,
                          child: Text("Acer",style: TextStyle
                          (color: Colors.black,fontSize: 12,fontWeight: FontWeight.bold),)),
                  
              
                      
                    
                    Positioned(top: 40,
                      left: 20,right: 20,
                      child: Text("Some quick example test to build card",
                      style: TextStyle( color: const Color.fromARGB(255, 216, 215, 215),
                      fontSize: 8.5),),
                    ),

                   Positioned(bottom: 30,left: 20,
                     child: ElevatedButton(onPressed: (){
                     
                     }, 
                     style: ElevatedButton.styleFrom(
                      backgroundColor:  const Color.fromARGB(255, 11, 243, 107),
                        shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.zero,
                     ),
                     padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                     ),
                     
                     child: 
                     Text("Add to Cart",style: TextStyle(color: Colors.white,fontSize: 10),)),
                   )
                  
                      ],
                  
                     ),
                                          ),
                                        ),
                                       ], )
                                           
                                  
                                        
                                        
                                    ),
                      ),],
                    
                               
                       )
                    ],
                  ),
                
        ],
      ),
    );
  }
}
class CurvedAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
     path.lineTo(0,size.height-60);
     // size.height - 120);

    //path.lineTo(0, size.height - 120); // From top-left to bottom-left
    /* path.quadraticBezierTo(
      size.width*0.25,size.height+20, // control point (center bottom)
      size.width*0.5,size.height- 30, // end point (bottom-right)
    );
 

    path.quadraticBezierTo(
      size.width *.75   ,size.height+20, // control point (center bottom)
      size.width, size.height-30, // end point (bottom-right)
    );*/
      // First wave
    path.quadraticBezierTo(
      size.width * 1 / 6, size.height,
      size.width * 2 / 6, size.height - 40,
    );

    // Second wave
    path.quadraticBezierTo(
      size.width * 3 / 6, size.height - 80,
      size.width * 4 / 6, size.height - 40,
    );

    // Third wave
    path.quadraticBezierTo(
      size.width * 5/ 6, size.height,
      size.width, size.height - 60,
    );

    

   // path.lineTo(size.width, size.height);
    path.lineTo(size.width   ,0); // Right-top corner
    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
