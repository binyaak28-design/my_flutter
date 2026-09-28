import 'dart:core';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class WhatsappUiImagepickerProfilepic extends StatefulWidget {
  const WhatsappUiImagepickerProfilepic({super.key});

  @override
  State<WhatsappUiImagepickerProfilepic> createState() => _WhatsappUiImagepickerProfilepicState();
}

class _WhatsappUiImagepickerProfilepicState extends State<WhatsappUiImagepickerProfilepic> {

List <Widget> iconss=[
  Icon(Icons.key,color: Colors.white,),
    Icon(Icons.lock,color: Colors.white,),
      Icon(Icons.av_timer_sharp,color: Colors.white,),
        Icon(Icons.key_off,color: Colors.white,),
          Icon(Icons.key_off,color: Colors.white,),
            Icon(Icons.key_off,color: Colors.white,),
              Icon(Icons.key_off,color: Colors.white,),


];
List  sName=[
  "Account",
  "Privacy",
  'Avatar',
  'Lists',
  'Chat',
  "Notifications",
  'Storage and data'

];
List sDetail=[
  'Security notifications,change number',
  'Block contacts, disappearing message',
  'Create, edit, profile photo',
  'Manage people and groups',
  'Theme, wallpaper, chat history',
  'Message, group & call tones',
  'Network usage, auto-download'


];

    File? _profileImage;

  Future<void> _pickProfileImage() async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Choose from Gallery'),
                onTap: () {
                  _getImage(ImageSource.gallery);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.camera),
                title: Text('Take a Photo'),
                onTap: () {
                  _getImage(ImageSource.camera);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:  Text("Settings",style: TextStyle(color: Colors.white,),),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);

        }, icon:  Icon(Icons.arrow_back,color: Colors.white,))
        ,
        backgroundColor: Colors.black,
        actions: [
         
          Icon(Icons.search,color: Colors.white,)
        ],
      ),
      body:
      
       SafeArea(
        
        child: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                   Stack(
                    
                    
                  alignment: Alignment.bottomRight,
                  children: [
                    
                    GestureDetector(
                      onTap: _pickProfileImage,
                      child: _profileImage == null
                          ? CircleAvatar(
                              radius: 30,
                              backgroundColor: const Color.fromARGB(255, 34, 31, 56),
                              child:Text("B",style: TextStyle(fontSize: 40,
                                color: const Color.fromARGB(255, 142, 194, 236)),),
                               
                              )
                            
                          : CircleAvatar(
                              radius: 30,
                              backgroundImage: FileImage(_profileImage!),
                            ),
                    ),
                   
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Binya",style: TextStyle(color: Colors.white)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("I am Binya",style: TextStyle(color: Colors.white,),),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                         
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.qr_code,color: Colors.green
                          ,),
                        ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.add_a_photo_outlined,color: Colors.green),
                          )
                                
                      ],
                    ),
                  ),
               
              
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Divider(thickness: 2, color: const Color.fromARGB(255, 47, 49, 46)),
             ),  
             
        
             Expanded(
               child: ListView.builder(
                itemCount: sName.length,
                itemBuilder: (BuildContext context, int index){
                  return 
                     Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                         Padding(
                           padding: const EdgeInsets.all(16.0),
                           child: iconss[index],
                         ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(sName[index],style: TextStyle(color: Colors.white),),
                                Text(sDetail[index],style: TextStyle(color: Colors.white))
                              ],
                            ),
                          )
                        ],
                      ),
               
                  );
                },),
             )
         
     ] )),
      
     
             /* Stack(
          alignment: Alignment.bottomRight,
          children: [
            GestureDetector(
              onTap: _pickProfileImage,
              child: _profileImage == null
                  ? CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.grey,
                      child: Icon(
                        Icons.camera_alt,
                        size: 40,
                        color: Colors.white,
                      ),
                    )
                  : CircleAvatar(
                      radius: 80,
                      backgroundImage: FileImage(_profileImage!),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: _pickProfileImage,
                tooltip: 'Pick Profile Picture',
                child: Icon(Icons.camera_alt),
              ),
            ),
          ],
        ),*/
             
     ) );
  }
}