import 'package:flutter/material.dart';
import 'package:flutter_application_1/whatsApp_UI_CallsPage.dart';
import 'package:flutter_application_1/whatsApp_UI_CommunityPage.dart';
import 'package:flutter_application_1/whatsApp_UI_UpdatesPage.dart';
import 'package:flutter_application_1/whatsApp_Ui_Chats_Page.dart';

class TaskWhatsappUI extends StatefulWidget {
  const TaskWhatsappUI({super.key});

  @override
  State<TaskWhatsappUI> createState() => _TaskWhatsappUIState();
}

class _TaskWhatsappUIState extends State<TaskWhatsappUI> {


  var initilalIndex=0;  
    @override
  Widget build(BuildContext context) {

    var whatsAppTabitems=[

      WhatsappUiChatsPage(),
      WhatsappUiUpdatespage(),
      WhatsappUiCommunitypage(),
      WhatsappUiCallspage()
        ];

                             

    return Scaffold(
     
      
      bottomNavigationBar: BottomNavigationBar(items: 
      [
        BottomNavigationBarItem(
          label: 'Chats',
          icon:Icon(Icons.chat_bubble,color: Colors.white,),
          ),
            BottomNavigationBarItem(
              label:'Udates',
          icon:Icon(Icons.update,color: Colors.white,
          
          ),
          backgroundColor: const Color.fromRGBO(0, 0, 0, 1)
          

          ),
            BottomNavigationBarItem(
              label: 'Communities',
          icon:Icon(Icons.groups,color: Colors.white,),
          ),
            BottomNavigationBarItem(
              label: 'calls',
          icon:Icon(Icons.call,color: Colors.white,),
          )
      ],
       type: BottomNavigationBarType.fixed,

       backgroundColor: Colors.black,
       currentIndex: initilalIndex,
      iconSize: 30,
      onTap: (int index){
        setState(() {
          initilalIndex=index;
        });

  }),
  
      body: 
      Container(
        height: double.infinity,width: double.infinity,
        color: const Color.fromARGB(68, 0, 0, 0),
       
         
child:  whatsAppTabitems.elementAt(initilalIndex)

         
        
//whatsAppTabitems.elementAt(initilalIndex))
      )
      
     
      
    );
  }
}