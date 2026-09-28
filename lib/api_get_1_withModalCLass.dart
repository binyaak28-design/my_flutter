import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/api_get_1_ModalClass.dart';

class ApiGet1Withmodalclass extends StatefulWidget {
  const ApiGet1Withmodalclass({super.key});

  @override
  State<ApiGet1Withmodalclass> createState() => _ApiGet1WithmodalclassState();
}

class _ApiGet1WithmodalclassState extends State<ApiGet1Withmodalclass> {
  List<api_get1_Modal_class>comp=[];

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetch();
  }
 void fetch() async{
  try {

    var datas=await Dio().get("https://fake-json-api.mock.beeceptor.com/companies");
    if (datas.statusCode==200) {
      setState(() {
        List company=datas.data;
        comp=company.map((item)=>
          api_get1_Modal_class.fromJson(item)
        ).toList();
      });
      
    } 
    
  } catch (e) {
    print(e);
    
  }

  
 }

  @override


  Widget build(BuildContext context) {
    return Scaffold(
    body: ListView.builder(
      itemCount: comp.length,
      itemBuilder: (context,index){
      return Card(
        child: 
        Row(
          children: [
            Text(comp[index].name!)
          ],
        ),
      );
    }),
    );
  }
  
 
}