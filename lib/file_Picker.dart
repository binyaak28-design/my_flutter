import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
//import 'package:open_file/open_file.dart';
//import 'package:open_filex/open_filex.dart';

class FilePickerIntro extends StatefulWidget {
  const FilePickerIntro({super.key});

  @override
  State<FilePickerIntro> createState() => _FilePickerIntroState();
}

class _FilePickerIntroState extends State<FilePickerIntro> {
  String? path; 
  String? name;
 
  void pickFile(BuildContext context)async{
    FilePickerResult? result=await FilePicker.platform.pickFiles();
     
     
    if(result!=null && result.files.single.path!=null){
      setState(() {
        
        path=result.files.single.path;
        name=result.files.single.name;
      });
    }else{
   ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('No file selected')));

    }

  }
  void showFile(BuildContext context){
if(path!=null){
OpenFile.open(path!);
}
else{
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('No file selected')));
}
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(                              
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: (){
             pickFile(context);
            }, child: Text("Pick A File")),
            Text("selected file : ${name == null ? "no file chosen" : "$name "}"),
        
            ElevatedButton(onPressed: (){
              showFile(context);
        
            }, child: Text("Open File"))
          ],
        ),
      ),

      
    );
  }
}