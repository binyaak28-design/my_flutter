import 'package:flutter/material.dart';
import 'package:flutter_application_1/whatsapp_UI_ImagePIcker_ProfilePic.dart';

class WhatsappUiUpdatespage extends StatefulWidget {
  const WhatsappUiUpdatespage({super.key});

  @override
  State<WhatsappUiUpdatespage> createState() => _WhatsappUiUpdatespageState();
}

class _WhatsappUiUpdatespageState extends State<WhatsappUiUpdatespage> {
  List statusPic=
  [
'asset/st1.jpeg',
'asset/st2.jpeg',
'asset/st3.jpeg',
'asset/st4.jpeg',
'asset/pizza bruscetta.jpg',
'asset/sawyerr.jpeg',
'asset/tokyo.jpg',
'asset/salad.jpg',
'asset/london.jpg',
'asset/laptop.jpg',
'asset/newyork.jpg'
  ];
  List statusName=[
    'Navin Krishna',
    'Hrithik',
    'Nrithi Naina',
    'Nandhu',
    'Rithu',
    'Nichu',
    'Binya',
    'Elen',
    'Namomi',
    'Akhil',
    'Swetha'
  ];
  List statusTime=
  [
'15 minutes ago',
'44 minutes ago',
'6.34pm',
'4.28pm',
'3.12pm',
'1.02pm',
'11.02 am',
'10.50 am',
'Yesterday',
'Yesterday',
'Yesterday'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        floatingActionButton: Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    // Meta AI FAB
  FloatingActionButton(
  onPressed: () {
    // action for editing
  },
   mini: true,
  backgroundColor: const Color.fromARGB(255, 42, 43, 42),
  child: const Icon(Icons.edit, color: Colors.white),
),
SizedBox(height: 8,),

    // Chat FAB
    FloatingActionButton(
      heroTag: "chatFAB",
      onPressed: () {},
       backgroundColor: Colors.green,
          child:
           Stack(
            children: [
              Icon(Icons.camera_alt),
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
            ),
    ),
  ],
),

       /*   floatingActionButton: FloatingActionButton(onPressed: (){
        
          },
          backgroundColor: Colors.green,
          child:
           Stack(
            children: [
              Icon(Icons.camera_alt),
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
            ),
            ),*/
           appBar: AppBar(
          title: Text("Updates", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
          actions: [
            IconButton(icon: Icon(Icons.qr_code,color: Colors.white,), onPressed: () {}),
            IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: () {}),
            PopupMenuButton<String>(
              color: Colors.grey[900],
              onSelected: (value) {
                  if(value=='Settings'){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const  
            WhatsappUiImagepickerProfilepic()

                ));
                }
              },
              icon: Icon(Icons.more_vert, color: Colors.white),
              itemBuilder: (context) {
                return [
                  'Create channel',
                  'Status privacy',
                  'Starred',
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
        
      
      body:
          SafeArea(
    
        
            child: Padding(
              padding: const EdgeInsets.all(8.0),
             
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Row(
                    children: [
                      Stack(
                           clipBehavior: Clip.none,
                        children: [
                          CircleAvatar(
                          radius: 30,
                          backgroundImage:AssetImage( 'asset/dddd.jpeg')
                          ,
                                        
                        ),
                        Positioned(
                          top: 38,right: -2,
                          child: Container(
                            height: 23,width: 23,
                          
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black,width: 1),
                              color: const Color.fromARGB(255, 54, 226, 60)
                            ),
                            child: Center(child: Icon(Icons.add,color: Colors.black,size: 16,)),
                          ),
                        )
                          
                        ],
                        
                      ),
                      SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Add status",style: TextStyle(fontSize: 17,color: Colors.white),),
                            Text("Disappears after 24 hours",style: TextStyle(fontSize: 15, color: const Color.fromARGB(120, 218, 207, 207)),)
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
               Text("Recent updates",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: const Color.fromARGB(120, 218, 207, 207)),),
                  
                    SizedBox(height: 10,),     
                    Expanded(
                      child: ListView.builder(
                         itemCount: statusPic.length,
                        itemBuilder: 
                            (BuildContext context,int index){
                           
                        return  
                         Padding(
                                           padding: const EdgeInsets.only(top: 20),
                                           child: Row(
                                               children: [
                                            
                                                   Stack(
                                                    children: [
                                                       CircleAvatar(
                                                      radius: 33,
                                                      backgroundColor: Colors.green,
                                                       child: CircleAvatar(
                                                        radius: 30,
                                                       backgroundImage: AssetImage(statusPic[index]),
                                                               //   ),                   
                                                                                                        ),
                                                     ),
                                                   
                                                    ],
                                                   
                                                   ),
                                              
                                                        const SizedBox(width: 12),
                                                     
                                        
                                            Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                       
                                                  children: [
                                                  
                                                      
                                                           Text(
                                                            statusName[index],
                                                            style: TextStyle(color: Colors.white,
                                                            fontSize: 14,fontWeight:FontWeight.bold),
                                                            overflow: TextOverflow.ellipsis,
                                                            ),
                                                        
                                                           Text(
                                                        statusTime[index],
                                                        style: TextStyle(fontSize: 12,color: const Color.fromARGB(120, 218, 207, 207)),),
                                                     
                                                   
                                                  ],
                                                                           
                                                                          ),
                                           
                                           
                                                
                                                  
                                                                // ],
                                                               //),
                                              
                       ]  ) ); 
                                
                            },
                            //((BuildContext context,int index){)
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