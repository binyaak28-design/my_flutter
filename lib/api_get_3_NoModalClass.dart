import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiGet3Nomodalclass extends StatefulWidget {
  const ApiGet3Nomodalclass({super.key});

  @override
  State<ApiGet3Nomodalclass> createState() => _ApiGet3NomodalclassState();
}

class _ApiGet3NomodalclassState extends State<ApiGet3Nomodalclass> {
  var jsonList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fun();
  }
 void fun() async{
  try {
    var response=await Dio().get("https://api.restful-api.dev/objects");
    if (response.statusCode==200) {
      setState(() {
        jsonList=response.data as List;
      });
      
    } 
  } catch (e) {
    print(e);
    
  }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      ListView.builder(
        itemCount: jsonList==null?0:jsonList.length,
        itemBuilder: (context,index){

        return Card(
          child: Row(
            children: [
              Text(jsonList[index]["id"]),
              Spacer(),
              Text(jsonList[index]["name"])
            ],
          ),
        );
      }),
    );
  }
  
 
}