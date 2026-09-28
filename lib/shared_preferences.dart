import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesIntro extends StatefulWidget {
  const SharedPreferencesIntro({super.key});

  @override
  State<SharedPreferencesIntro> createState() => _SharedPreferencesIntroState();
}

class _SharedPreferencesIntroState extends State<SharedPreferencesIntro> {
  TextEditingController textT=TextEditingController();

  var getVal="";
   void saveValue()async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.setString("key", textT.text);
    getValue();

   }
   void getValue()async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    getVal= sharedPreferences.getString("key")!;


   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SafeArea(child: 
      Column(
        children: [
          TextField(
          controller: textT,
          ),
          ElevatedButton(onPressed: (){ 
            setState(() {
              saveValue();
            });
          }, child: Text("Click")),
          Text(getVal),
        ],
      )),
    );
  }

  
}