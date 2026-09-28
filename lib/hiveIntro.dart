import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{
  await Hive.initFlutter();
}


class HiveIntro extends StatefulWidget {
  const HiveIntro({super.key});

  @override
  State<HiveIntro> createState() => _HiveIntroState();
}

class _HiveIntroState extends State<HiveIntro> {
  Box? _box;
  @override
  void initState(){
    super.initState();
    _openBox(); 
    
      // Open the Hive box
  }
   void _openBox()async{
  _box=await Hive.openBox("My Box");

  }
  
  // Save data to the box
  void _saveData(){
    if (txt.text.isNotEmpty) {
      _box!.put("name", txt.text);
      get_data();
     }
  }
    //Get data
    void get_data(){
      setState(() {
        
        storedData=_box!.get("name",defaultValue: "No Value Entered");
      });

    }
      TextEditingController txt=TextEditingController();
  String storedData="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(height: 300,width: 600,
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: txt,
                decoration: InputDecoration(
                  labelText: "Enter Name :",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(0))
                ),
          
              ),
              ElevatedButton(onPressed: (){
              _saveData();
              }, child: Text("Save Data")),
          
              Text("Stored Data : $storedData")
            ],
          ),
        ),
      ),
    );
  }
}