import 'package:flutter/material.dart';
import 'package:flutter_application_1/gridView_task_Display.dart';

class TaskGridview extends StatelessWidget {
  
 // const TaskGridview({super.key});
 /* List <Image> imageUrl=[
   Image.asset( 'asset/classic pepperoni.jpg'),
    Image.asset('asset/clam cowder.jpg'),
   Image.asset( 'asset/pizza bruscetta.jpg'),
   Image.asset( 'asset/pepperoni pizza.jpg'),
    Image.asset('asset/cheese pizza.jpg'),
    Image.asset('asset/chicken tikka masala pizza.jpg')
  ];*/
  List <String> imagePath=[
    /*'asset/classic pepperoni.jpg',
    'asset/clam cowder.jpg',
   'asset/pizza bruscetta.jpg',
   'asset/pepperoni pizza.jpg',
  'asset/cheese pizza.jpg',
   'asset/605A2037 (1).JPGf.jpg'*/
   'asset/classic pepperoni.jpg',
   'asset/clam cowder.jpg',
   'asset/pizza bruscetta.jpg',
   'asset/pepperoni pizza.jpg',
   'asset/cheese pizza.jpg',
   'asset/chicken tikka masala pizza.jpg'


   

  // 'asset/chicken tikka masala pizza.jpg'
  ];
  List namesPizza=[
    'Classic Pepperoni','Clam Chowder',
    'Pizza Bruschetta','Pepperoni Pizza',
    'Cheese Pizza','Chicken Tikka Masala...'
  ];
  List <String> price=['\$11.0',
                        '\$8.99','\$19.25','\$11.25','\$16.25','\$20.0'];
    List percentage=['12%','10%','2%','6%','17%','23%'];

  TaskGridview({super.key});



 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:   AppBar(
       
        toolbarHeight: 100,
        title:SizedBox(height: 100,width:double.infinity,
        
          child: Stack(
            children: [
            
           
          
            SizedBox(height: 150,width: double.infinity,
                  child: Image.asset('asset/classic pepperoni.jpg',
                  fit: BoxFit.cover,),
                  ),
                  Container(
                    height: 100,width: double.infinity,
                    color: Colors.blue.withOpacity(.5),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 40,left: 150),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Pizza",style: TextStyle(color: Colors.white,fontSize: 20),),
                    ),
                  ),
                  
                    Padding(
              padding: const EdgeInsets.only(top:40,left: 20 ),
              child: Icon(Icons.arrow_back,color: Colors.white,size: 25,),
                    ),
           
           ],  ),
        ),
      //  backgroundColor: Colors.amber,
     )
    , 
      body: 
      Padding(
        padding: const EdgeInsets.only(left: 10,top: 10),
        child: SizedBox(width: double.infinity,height:double.infinity,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: imagePath.length,
                
                gridDelegate:
               SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              
              mainAxisSpacing: 10,crossAxisSpacing: 10,
           childAspectRatio: 0.5,   
              )
              , itemBuilder:(BuildContext context,int index) {
              
                return Flexible(flex: 5,
                  child: SizedBox(height: double.infinity,
                  //width: 350,
                                
                      child: Card(
                                
                          child: Column(
                            children: [
                              SizedBox(height: 200,
                                child: Stack(
                                    //  clipBehavior: Clip.antiAlias,
                                 
                                      children: [
                                       
                                            SizedBox(width: double.infinity,height:double.infinity,
                                             
                                                
                                              
                                                      child: Image.asset(imagePath[index],
                                                       fit: BoxFit.cover,
                                                      ),
                                                    
                                                  
                                               
                                            
                                            ),
                                      
                                     
                                          Positioned(top: 5,right: 5,
                                            child: Icon(Icons.favorite_border,color: Colors.red,size: 15,)),
                                          
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Padding(
                                                padding: const EdgeInsets.only(top: 150),
                                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                  children: [
                                                    Container(width: 60,height: 20,
                                                      decoration:BoxDecoration(   color: Colors.blueAccent .withOpacity(0.5),
                                                      borderRadius: BorderRadius.circular(10)
                                                      ) ,
                                                      child: Center(
                                                        child: Text(price[index],
                                                        style: TextStyle(fontSize: 10,color: Colors.white),),
                                                      ),),
                                                    
                                            //    SizedBox(width: 200,),
                                                                                         
                                               /*  Padding(
                                                   padding: const EdgeInsets.only(right: 20,),*/
                                                   //child: 
                                                   Container(
                                                    width: 70,height: 20,
                                                      decoration:BoxDecoration(   color: const Color.fromARGB(255, 68, 255, 99) .withOpacity(0.5),
                                                      borderRadius: BorderRadius.circular(10)) ,
                                                    child: Center(
                                                      child: Text(percentage[index],
                                                        style: TextStyle(fontSize: 10,color: Colors.white),),
                                                    ),                                   
                                                                                           
                                                                                 
                                                        
                                                      ),
                                            //     ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            
                                          
                                      ],
                                 
                                ),
                              ),
                           

                             SizedBox(height: 10,),
                                  
                                  Positioned(top: 30,left: 30,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(namesPizza[index],style: TextStyle(fontWeight: FontWeight.bold),),
                                    )),
                               
                              
                  
                               /*     Positioned(top: 20,
                                      child: SizedBox(width: 200,
                                        child: ElevatedButton.icon(
                                          onPressed: (){
                                        
                                        }, 
                                        
                                        icon:Icon(Icons.shopping_cart,size: 12,color: Colors.white,),
                                        label:Text("Add to Cart",style: TextStyle(fontSize: 11,color: Colors.white),),
                                        
                                        
                                                                style: ElevatedButton.styleFrom(
                                                                  backgroundColor: Colors.pink
                                                                  
                                                                ),
                                         ),
                                      ),*/
                               
                                
                                  
                                /// card as button
                                      InkWell(
                                       onTap: (){

                                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>
                                                      GridviewTaskDisplay(imageGrid: imagePath[index],
                                                      pizzaNames:namesPizza[index] ,))); 
                                       
                                       },
                                          
                                         child: Padding(
                                       
                                           padding: const EdgeInsets.only(  top: 10,left: 15,right: 15),
                                       //    child: SizedBox(height: 40,width: double.infinity,
                                           
                               
                                             
                                                //   child: Positioned( top: 90,
                                                    // child: ClipRRect(
                                                      
                                                       child: Container(height: 40,width: double.infinity,


                                                        //height: 20,width: 300,
                                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                                                          gradient: LinearGradient(
                                                               begin: Alignment.centerLeft,
                                                            end: Alignment.centerRight,
                                                            colors: 
                                                          [
                                                            Colors.deepOrange,
                                                            Colors.pinkAccent
                                                          ],
                                                         // stops: [.7,.5]
                                                         )
                                                        ),
                                                        child: Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Padding(
                                                            padding: const EdgeInsets.only(left: 30,top: 3),
                                                            child: Row(
                                                              children: [
                                                              
                                                                 Icon(Icons.shopping_cart,size: 12,color: Colors.white,),
                                                              Text("Add to Cart",style: TextStyle(fontSize: 11,color: Colors.white),
                                                              ),
                                                              
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                                                     ),
                                                     ),
                                                   ),
                                                 
                                             
                                       //  ),
                                         
                                    
                                   
                                 ],
                          ),
                             
                      
                            ),
                                   ),
                );
              
              }
              
                   
              
              
              ),
            ),
          ),
        ),
      ),
    
);
  
  
  
  }
  

    
  
}