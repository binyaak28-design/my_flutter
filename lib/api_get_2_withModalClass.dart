import 'dart:core';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/api_get_2_MadalClass.dart';

class ApiGet2Withmodalclass extends StatefulWidget {
  const ApiGet2Withmodalclass({super.key});

  @override
  State<ApiGet2Withmodalclass> createState() => _ApiGet2WithmodalclassState();
}

class _ApiGet2WithmodalclassState extends State<ApiGet2Withmodalclass> { 
  List<api_get2_Modal_class> Users=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchFun();
  }
  void fetchFun()async {
    try {
      var Userdatas=await Dio().get("https://gorest.co.in/public/v2/users");
      if (Userdatas.statusCode==200) {
        setState(() {
          
         List user=Userdatas.data;
         Users=user.map((item)=>api_get2_Modal_class.fromJson(item)).toList();
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
      ListView.builder(itemCount: Users.length,
        itemBuilder: (context,index){
        return Card(
          child: Row(
            children: [
Text(Users[index].name!,),
Spacer(),
//Text(Users[index].address!),
          Text("${Users[index].id!}"),
        
            ],
          ),
        );
      
      }),
    );
  }
  
  
}