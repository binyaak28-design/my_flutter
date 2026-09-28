import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiGet4Nomodalclass extends StatefulWidget {
  const ApiGet4Nomodalclass({super.key});

  @override
  State<ApiGet4Nomodalclass> createState() => _ApiGet4NomodalclassState();
}

class _ApiGet4NomodalclassState extends State<ApiGet4Nomodalclass> {
   var jsonList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fun();
  }
 void fun() async{
  try {
    var response=await Dio().get("https://dummy-json.mock.beeceptor.com/continents");
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
              Text(jsonList[index]["code"]),
              Spacer(),
              Text(jsonList[index]["name"])
            ],
          ),
        );
      }),
 
    );
  }
}