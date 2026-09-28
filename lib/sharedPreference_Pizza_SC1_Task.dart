import 'package:flutter/material.dart';
import 'package:flutter_application_1/shaaaaa.dart';
import 'package:flutter_application_1/sharedPreference_Pizza_SC2_task.dart';

class SharedpreferencePizzaTask extends StatefulWidget {
  const SharedpreferencePizzaTask({super.key});

  @override
  State<SharedpreferencePizzaTask> createState() => _SharedpreferencePizzaTaskState();
}

class _SharedpreferencePizzaTaskState extends State<SharedpreferencePizzaTask> {
  List imageP=[
    'asset/pizza bruscetta.jpg',
    'asset/salad.jpg',
    'asset/dessert.jpeg',
    'asset/pasta.jpeg',
    'asset/beverage.jpeg',
    'asset/pizza bruscetta.jpg',
    'asset/salad.jpg',
    'asset/dessert.jpeg',
    'asset/pasta.jpeg',
    'asset/beverage.jpeg'
  ];
  List NameP=[
    'Pizza',
    'Salad',
    'Dessert',
    'Pasta',
    'Beverage',
     'Pizza',
    'Salad',
    'Dessert',
    'Pasta',
    'Beverage'
  ];
  List itemP=[
    '5 items',
    '2 items',
    '2 items',
    '1 items',
    '1 items',
     '5 items',
    '2 items',
    '2 items',
    '1 items',
    '1 items',
  ];


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu,color: Colors.white,),
        actions: [
          Icon(Icons.shopping_bag,color: Colors.red,)
        ],
      ),
      body: 
    
     Stack(
          children: [
            Row(
              children: [
                Flexible(flex: 4,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Flexible(flex: 6,
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Center(
              child: ListView.builder(
                itemCount: NameP.length,
                itemBuilder: (BuildContext context,int index){
                      
               return Center(
                 child: Stack(
                    children: [
                     SizedBox(height: 100,width: 300,
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: InkWell(
                          onTap: () {
                            Navigator.   push(context,
                             MaterialPageRoute(builder: (context)=>
                            // Shaaaaa(categoryName: NameP[index])
                            SharedpreferencePizzaSc2Task(categoryName: NameP[index])
                             ));
                          }
                          
                         ,  child: Card(
                            child: Center(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(NameP[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                  ),
                                  Text(itemP[index])
                                ],
                              ),
                            ),
                            
                                         ),
                         ),
                       ),
                     ),
                   
                     SizedBox(width: 310,
                       child: Padding(
                         padding: const EdgeInsets.only(top: 30),
                         child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                 CircleAvatar(
                            radius: 20,
                            backgroundImage:AssetImage(imageP[index])
                            ),
                           // Spacer(flex: 1,),
                          FloatingActionButton(onPressed: (){
                          
                          }, 
                          mini: true,  
                          shape: CircleBorder(),
                          
                          backgroundColor: Colors.red,
                          child: Icon(Icons.arrow_forward,color: Colors.white,),)
                          
                            ],
                          ),
                       ),
                     ),
                    
                 
                    ]
                    ,
                   
                  ),
               );
              } ),
            )
          ],
        ),
      
    );
  }
}