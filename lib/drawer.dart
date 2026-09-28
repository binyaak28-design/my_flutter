import 'package:flutter/material.dart';
import 'package:flutter_application_1/task_AtmCard.dart';
import 'package:flutter_application_1/whatsApp_UI_UpdatesPage.dart';
import 'package:flutter_application_1/whatsApp_Ui_Chats_Page.dart';

class DrawerIntro extends StatefulWidget {
  const DrawerIntro({super.key});

  @override
  State<DrawerIntro> createState() => _DrawerIntroState();
}
  
class _DrawerIntroState extends State<DrawerIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Drawer'),
      backgroundColor: Colors.blueAccent,),
      body: Center(child: Text("Body",style: TextStyle(fontSize: 40),)),
      drawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              //  gradient:LinearGradient(colors: )
              ),
              
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.greenAccent
                ),
                accountName: Text("Binya"),
             accountEmail:Text('binyta1223@gmail.com'),
             currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('asset/dp.jpeg'),
             ),
             currentAccountPictureSize: Size.square(50),
             ),
            
             ),
             ListTile(
              leading: Icon(Icons.person),
              title: Text("My Profile"),
              onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TaskAtmcard()));
              },
             ),
           
            ListTile(
              leading: Icon(Icons.book),
             title: Text("My Course"),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder:(context)=>WhatsappUiChatsPage()));
              } ,
            ),
             ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>WhatsappUiUpdatespage()));
              },
            ),
          ],
        ),
      ),
    );
  } 
}