import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sh extends StatefulWidget {
  const Sh({super.key});

  @override
  State<Sh> createState() => _ShState();
}

class _ShState extends State<Sh> {
  TextEditingController textt=TextEditingController();
  String getval="";

    void saveValue() async{
      SharedPreferences sharedPreferences=  await SharedPreferences.getInstance();
      sharedPreferences.setString("key", textt.text);
      getvalue();
    }

void getvalue() async{
  SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
  getval=sharedPreferences.getString("key")!;

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller:textt ,

          ),
          ElevatedButton(onPressed: (){

            saveValue();
          }, child: Text("click")),
          Text(getval)
        ],
      ),
    );
  }
  

}

