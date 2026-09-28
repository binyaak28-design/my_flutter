import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class Ff extends StatefulWidget {
  const Ff({super.key});

  @override
  State<Ff> createState() => _FfState();
}

class _FfState extends State<Ff> {
  String? name,path;
 /* void pickFile(BuildContext context)async {

  FilePickerResult? result=await FilePicker.platform.pickFiles();
  if (result !=null && result.files.single.path!=null) {
setState(() {
  path=result.files.single.path;
  name=result.files.single.path;
});

  }

}*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        children: [
          ElevatedButton(onPressed: (){
            pickFile(context);
          }, child: Text("hew")),
            ElevatedButton(onPressed: (){
            openFile(context);
          }, child: Text("hequ"))
        ],
      )
    ,
    );
  }
  
  void openFile(BuildContext context) {

if (path!=null) {

OpenFile.open(path);
  
}

  }
  
  void pickFile(BuildContext context)async {

    FilePickerResult? result=await FilePicker.platform.pickFiles();
    if (result!=null && result.files.single.path!=null) {
      setState(() {
        path=result.files.single.path;
        name=result.files.single.name;
      });
      
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("hello there....")));
    }
  }
}




