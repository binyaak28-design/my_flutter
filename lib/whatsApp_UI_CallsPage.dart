import 'package:flutter/material.dart';

class WhatsappUiCallspage extends StatefulWidget {
  const WhatsappUiCallspage({super.key});

  @override
  State<WhatsappUiCallspage> createState() => _WhatsappUiCallspageState();
}

class _WhatsappUiCallspageState extends State<WhatsappUiCallspage> {

  
  List cImage=[
    'asset/jack.jpeg' ,
     'asset/jack.jpeg' ,
      'asset/michel.jpeg',
      'asset/sawyerr.jpeg',
      'asset/jack.jpeg' ,
      'asset/kate.jpeg', 
      'asset/michel.jpeg',
       'asset/kate.jpeg', 
     
       'asset/michel.jpeg',
      'asset/sawyerr.jpeg',
  
  ];
  List cName=[
    "Nriti  Naina",
     'Hrithik',
    'Helen',
    "Nriti  Naina",
    "Nriti  Naina",
    'Navin Krishna',
    'Helen',
    'Navin Krishna',
    'Helen',
   
    'Hrithik',
  ];
  List cTime=[
    'Yesterday, 10.49 am',
    'Yesterday, 10.49 am',
    '14 August, 11.46 am',
    '14 August, 08.46 am',
    '13 August, 10.20 pm',
     '10 August, 01.46 pm',
     '13 August, 10.02 am',
     '05 August, 11.00 pm',
     '05 August, 08.46 pm',
    
     '01 August, 08.46 pm',
    



  ];
  List <Widget>cCall=[
    Icon(Icons.video_call,color: Colors.white,),
    Icon(Icons.call,color: Colors.white,),
    Icon(Icons.call,color: Colors.white,),
     Icon(Icons.video_call,color: Colors.white,),
    Icon(Icons.call,color: Colors.white,),
     Icon(Icons.video_call,color: Colors.white,),
    Icon(Icons.call,color: Colors.white,),
     Icon(Icons.video_call,color: Colors.white,),
    Icon(Icons.call,color: Colors.white,),
    
    Icon(Icons.call,color: Colors.white,),

  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text("Calls", style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.black,
            actions: [
              IconButton(icon: Icon(Icons.qr_code,color: Colors.white,), onPressed: () {}),
              IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: () {}),
            // IconButton(icon: Icon(Icons.camera_alt,color: Colors.white,), onPressed: () {}),
              PopupMenuButton<String>(
                color: Colors.grey[900],
                onSelected: (value) {},
                icon: Icon(Icons.more_vert, color: Colors.white),
                itemBuilder: (context) {
                  return [
                    'Clear call log',
                    'Settings'
                  ].map((String item) {
                    return PopupMenuItem(
        
                      value: item,
                      child: Text(item, style: TextStyle(color: Colors.white)),
                    );
                  }).toList();
                },
              ),
            ],
          ),
              floatingActionButton: FloatingActionButton(onPressed: (){
          
            },
            backgroundColor: Colors.green,
            child:
             Stack(
              children: [
                Icon(Icons.call),
                Positioned(right: -2,
                  child: Container(
                    height: 10,width: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green
                    ),
                    child: Icon(Icons.add,size: 12,color: Colors.black,),
                  ),
                )
              ],
              ),),
             
        body: 
          SafeArea(
        
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                 Column(crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Favourites",style: TextStyle(color: Colors.white,fontSize: 17),),
                    ),
                     Row(
                      children: [
                        Stack(
                          children: [
                    
                       CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.green,
                            ),
                       
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 18),
                        child: Icon(Icons.favorite,size: 25,),
                      )
                          ],
                        
                     ), 
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Text("Add Favourite",style: TextStyle(color: Colors.white),),
                     )
                        ],
                     ),
                     SizedBox(height: 15,),
                       Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Text("Recent",style: TextStyle(color: Colors.white),),
                 ),
                   ],
                 ),
               
                      
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                       itemCount: cImage.length,
                      itemBuilder: 
                          (BuildContext context,int index){
                         
                      return   Padding(
                                         padding: const EdgeInsets.only(top: 20),
                                         child: Row(
                                             children: [
                                          
                                                 CircleAvatar(
                                                  radius: 30,
                                                 backgroundImage: AssetImage(cImage[index]),
                                                         //   ),                   
                                               ),
                                            
                                                      const SizedBox(width: 12),
                                                   
                                      
                                            Expanded(
                                              child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                     
                                                children: [
                                                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          cName[index],
                                                          style: TextStyle(color: Colors.white,
                                                          fontSize: 14,fontWeight:FontWeight.bold),
                                                          overflow: TextOverflow.ellipsis,
                                                          ),
                                                      ),
                                                       Padding(
                                                         padding: const EdgeInsets.all(8.0),
                                                         child: cCall[index],
                                                       ),
                                                       
                                                    ],
                                                  ),
                                                   Text(
                                                      cTime[index],
                                                      style: TextStyle(fontSize: 12,color: const Color.fromARGB(120, 218, 207, 207)),),
                                                      Row(
                        children: [
                          Icon(Icons.call_made,
                              size: 14, color: Colors.green), // call made icon
                          const SizedBox(width: 4),
                          Text(
                            "Outgoing",
                            style: TextStyle(
                                fontSize: 12,
                                color: const Color.fromARGB(185, 255, 255, 255)),
                          ),
                        ],
                      ),
                                                
                                                ],
                                                                         
                                                                        ),
                                            ),
                                         
                                              
                                                
                                                              // ],
                                                             //),
                                                       ],
                                           ),
                                       ); 
                              
                          },
                          //((BuildContext context,int index){)
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
       
      ),
    );
  }
}