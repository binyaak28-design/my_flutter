import 'package:flutter/material.dart';

class SharedpreferencePizzaSc3Task extends StatefulWidget {
     final Map<String, dynamic> item; 
  const SharedpreferencePizzaSc3Task({super.key,required this.item});

  @override
  State<SharedpreferencePizzaSc3Task> createState() => _SharedpreferencePizzaSc3TaskState();
}

class _SharedpreferencePizzaSc3TaskState extends State<SharedpreferencePizzaSc3Task> {
  @override
  Widget build(BuildContext context) {

    var item = widget.item;
    return Scaffold(
      extendBodyBehindAppBar: true,
 backgroundColor: Colors.red,
   appBar: AppBar(
    leading: Icon(Icons.arrow_back,color: Colors.white,),
   backgroundColor: Colors.transparent,
    title: Text("Food Details",style: TextStyle(color: Colors.red),),
   ),
   body: 
  Stack(
    children: [
 
        
  Column(
          children: [
            Flexible(flex: 3,
              child: Center(
                child: Container(
                  color: Colors.red,
                
                
                            ),
              )),
            Flexible(flex: 7,
             
                child: Container(
                  decoration:BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                  ),
                             /*   child:Expanded(
                    child: ListView.builder(itemCount: 10,
                      itemBuilder: (BuildContext context,int index){
                      return */
                      child: Center(
                        child: Stack(
                          clipBehavior: Clip.none,
                                           children: [
                                         
                     
                   Positioned(top: -80,left: 0,right: 0,
                            child: CircleAvatar(
                                                    
                              radius: 80,
                              backgroundImage: AssetImage(item["image"]!),
                            ),
                          
                        ),
                                          
                                          
                                          
                                              Padding(
                                                padding: const EdgeInsets.only(top: 70),
                                                child: Column(mainAxisAlignment: MainAxisAlignment.center
                                                  ,crossAxisAlignment: CrossAxisAlignment.center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsets.only(left: 20),
                                                                          child: Align(alignment:Alignment.centerLeft ,
                                                                            child: Text(item["name"],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                                                                        ),
                                                                         Padding(
                                                                           padding: const EdgeInsets.only(left: 20),
                                                                           child: Align(alignment: Alignment.centerLeft,
                                                                            child: Text("Rs${item["price"]}",style: TextStyle(color: Colors.green),)),
                                                                         ),
                                                                      
                                                                         
                                                      SizedBox(width: 150,height: 100,
                                                        
                                                         
                                                            child: Padding(
                                                              padding: const EdgeInsets.only(top: 40,),
                                                             
                                                                child: Card(
                                                                  color: Colors.red,
                                                                  child: 
                                                                  Center(
                                                                    child:  Text("-  5  +",style: TextStyle(fontSize: 18)),
                                                                    
                                                                 
                                                                  
                                                                ),
                                                                                                                          ),
                                                              ),
                                                          
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsets.all(8.0),
                                                                child: Row(
                                                                  children: [
                                                                    Icon(Icons.star,color: Colors.amber,),
                                                                    Text(item["Rating"],style: TextStyle(color: Colors.grey),)
                                                                  ],
                                                                ),
                                                              ),
                                                                Padding(
                                                                  padding: const EdgeInsets.all(8.0),
                                                                  child: Row(
                                                                  children: [
                                                                    Icon(Icons.water_drop,color: Colors.red,),
                                                                    Text(item["calory"],style: TextStyle(color: Colors.grey))
                                                                  ],
                                                                                                                          ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets.all(8.0),
                                                                  child: Row(
                                                                  children: [
                                                                    Icon(Icons.watch,color: Colors.pink,),
                                                                    Text(item["prep"],style: TextStyle(color: Colors.grey))
                                                                  ],
                                                                                                                          ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                        Align(alignment: Alignment.centerLeft,
                                                          child: Padding(
                                                            padding: const EdgeInsets.only(left: 20),
                                                            child: Text("About Food",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                                                          )),
                                                      
                                                          Align(alignment: Alignment.centerLeft
                                                         ,child:  SizedBox(height: 50,width: double.infinity,
                                                           child: Padding(
                                                             padding: const EdgeInsets.only(left: 20,right: 20),
                                                             child: Text(item["about"],
                                                              style: TextStyle(color: Colors.grey)),
                                                           ),
                                                         )
                                                          ),
                                                        SizedBox(width: 300,height: 60,
                                                          child: ElevatedButton(onPressed: (){
                                                          
                                                          },
                                                          style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.red,
                                                          
                                                          ),
                                                           child: Text("Add to cart",
                                                          style: TextStyle(color: Colors.white),),
                                                          ),
                                                        )
                                                
                                                                      ],
                                                ),
                                              ),
                                            
                                          
                                          
                                           ], 
                                          ),
                     
                    
                    //}
                    //),
                 // )
                  
                 
                ),
              ))

          ],
        ) ,
    
    ],
  ),      
      
    );
  }
}