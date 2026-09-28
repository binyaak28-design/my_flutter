import 'package:flutter/material.dart';
import 'package:flutter_application_1/whatsApp_UI_CallsPage.dart';
import 'package:flutter_application_1/whatsapp_UI_ImagePIcker_ProfilePic.dart';

class WhatsappUiChatsPage extends StatefulWidget {
  const WhatsappUiChatsPage({super.key});

  @override
  State<WhatsappUiChatsPage> createState() => _WhatsappUiChatsPageState();
}

class _WhatsappUiChatsPageState extends State<WhatsappUiChatsPage> {
    List wImages=[
      
      'asset/jack.jpeg' ,
      'asset/kate.jpeg', 
      'asset/michel.jpeg',
      'asset/sawyerr.jpeg',
     'asset/dp.jpeg',
      'asset/dddd.jpeg',
       
       'asset/laptop.jpg',
'asset/london.jpg',
'asset/new.avif',
  /*'asset/Google-flutter-logo.png',
'asset/gradient for atmCard.jpg',
'asset/laptop.jpg',
'asset/london.jpg',
'asset/new.avif',
'asset/newyork.jpg',*/];

List  wNames=[
  'Binya',
  'Nrithi Naina',
  'Ribin',
  'Navin Krishna',
  'Hrithik',
  'Helen',
'Nichu',
'Krishna',
  'Rithu',
'Naina',

];

List wMessages=[
  'Hi hello',
  "Hey, how's it going?""Hey, how's it going?",
  'Upload the best shot from your camera roll ',
 "Just confirming our meeting tomorrow at 10 AM.",
 "Can you send me the file when you get a chance?" ,
  'photo'
  , "Just confirming our meeting tomorrow at 10 AM.",
 "Can you send me the file when you get a chance?" ,
  'photo',
     "Just confirming our meeting tomorrow at 10 AM.",
];
List wTime=[
'1.41 pm',
'12.04 pm',
'09.35 am',
'Yesterday',
'11/08/2025',
'09/08/2025',
'Yesterday',
'11/08/2025',
'09/08/2025',
'01/08/2025',

];
///DropDown button=>

 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

        
        backgroundColor: Colors.black,
      /*   floatingActionButton: FloatingActionButton(onPressed: (){
      
        },
        backgroundColor: Colors.green,
        child:  Stack(
            children: [
              Center(child: Icon(Icons.chat_bubble,color: const Color.fromARGB(255, 23, 24, 23),)),
             Positioned(top: 20,left: 22,
                child: Container(
                  height: 10,width: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                   // color: Colors.green
                  ),
                  child: Icon(Icons.add,size: 11,color: const Color.fromARGB(255, 240, 238, 238),),
                ),
              )
            ],
            ),),*/
            floatingActionButton: Column(
  mainAxisSize: MainAxisSize.min,
  children: [
    
         Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        onPressed: () {
          // Your action here
        },
        backgroundColor: Colors.transparent, // remove default bg
        elevation: 0,
     child:  Stack(
      children: [
        Center(
          child: Container(
            height: 40,width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), 
              color: const Color.fromARGB(255, 7, 7, 7),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 90, 86, 86).withOpacity(0.4), // shadow color
        blurRadius: 1, // softness of the shadow
        spreadRadius: .5,
                )
              ]
              
            ),
           
          ),
        ),
        Center(
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: SweepGradient(
                colors: [
                  Colors.blue,
                  Colors.purple,
                 
                  Colors.blue, // repeat start color for smooth loop
                ],
              ),
            ),
            child: Center(
              child: Center(
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:  const Color.fromARGB(255, 7, 7, 7), // inner circle
                  ),
                 // add icon inside
                ),
              ),
            ),
          ),
        ),
         ],
    ),),
    ),
     
  
    // Chat FAB
    FloatingActionButton(
      heroTag: "chatFAB",
      onPressed: () {},
      backgroundColor: Colors.green,
      child: Stack(
        children: [
          Center(child: Icon(Icons.chat_bubble, color: Colors.black)),
          Positioned(
            top: 20,
            left: 22,
            child: Icon(Icons.add, size: 12, color: Colors.white),
          ),
        ],
      ),
    ),
  
  ],
),

        
       
         appBar: AppBar(
        title: Text("WhatsApp", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        actions: [
          IconButton(icon: Icon(Icons.qr_code,color: Colors.white,), onPressed: () {}),
          IconButton(icon: Icon(Icons.camera_alt,color: Colors.white,), onPressed: () {}),
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
                'New group',
                'New community',
                'New broadcast',
                'Linked device',
                'Starred',
                'Payments',
                'Read all',
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
      
          child: Stack(
            children: [
             Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      decoration:InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                    labelText:"Ask Meta AI or Search",
                                    
                                   filled: true,
                                   fillColor: const Color.fromARGB(197, 29, 28, 28),
                                   border: OutlineInputBorder(
                                    borderRadius:BorderRadius.circular(25))
                                  
                                ),
                  ),
                ),
                  
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                     itemCount: wImages.length,
                    itemBuilder: 
                        (BuildContext context,int index){
                       
                    return   Padding(
                                       padding: const EdgeInsets.only(top: 20),
                                       child: Row(
                                           children: [
                                        
                                               CircleAvatar(
                                                radius: 30,
                                               backgroundImage: AssetImage(wImages[index]),
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
                                                        wNames[index],
                                                        style: TextStyle(color: Colors.white,
                                                        fontSize: 14,fontWeight:FontWeight.bold),
                                                        overflow: TextOverflow.ellipsis,
                                                        ),
                                                    ),
                                                       Text(
                                                    wTime[index],
                                                    style: TextStyle(fontSize: 12,color: const Color.fromARGB(120, 218, 207, 207)),),
                                                 
                                                  ],
                                                ),
                                                Text(wMessages[index],
                                                style: TextStyle(fontSize:12 ,
                                                color: const Color.fromARGB(185, 255, 255, 255))
                                                ,overflow: TextOverflow.ellipsis,
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
         
          
         ] ),
        ),
      
      ),
    );
  }
}