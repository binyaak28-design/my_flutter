

import 'package:flutter/material.dart';
import 'package:flutter_application_1/shared_preference_taskDisplay.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceTask extends StatefulWidget {
  const SharedPreferenceTask({super.key});

  @override 
  State<SharedPreferenceTask> createState() => _SharedPreferenceTaskState();
}

class _SharedPreferenceTaskState extends State<SharedPreferenceTask> {
  TextEditingController first=TextEditingController();
  TextEditingController second=TextEditingController();
  TextEditingController third=TextEditingController();
   String nameVal="";
   String emailVal="";
   String addressVal="";
  void setValue()async{
   SharedPreferences sharedPreferences= await SharedPreferences.getInstance();
   sharedPreferences.setString("name",first.text);
  sharedPreferences.setString("email",second.text);
  sharedPreferences.setString("address",third.text);
  getValue();

  
  }
 getValue()async{
SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
nameVal=sharedPreferences.getString("name")!;
emailVal=sharedPreferences.getString("email")!;
addressVal=sharedPreferences.getString("address")!;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
     Card(
      child: 
      Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            controller: first,
         decoration: InputDecoration(
          labelText: "Name",
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(0))
         ),
          ),

            TextField(
            controller: second,
         decoration: InputDecoration(
          labelText: "Email ",
          
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(0))
         ),
          ),

            TextField(
            controller: third,
            
            maxLines: 5,
         decoration: InputDecoration(
          labelText: "Address ",
          alignLabelWithHint: true,
          
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(0))
         ),
          ),

          ElevatedButton(onPressed: (){
          Navigator.push(context,
           MaterialPageRoute(builder: (context)=>SharedPreferenceTaskdisplay(nameP: nameVal,
           emailP: emailVal,addP: addressVal,
          )),
          
          );
            setState(() {
              
              setValue();
            });

          }, child: Text("Submit")),
          


        ],
      )
      )
      ),
    );
  }
}