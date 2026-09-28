import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiGetTask1 extends StatefulWidget {
  const ApiGetTask1({super.key});

  @override
  State<ApiGetTask1> createState() => _ApiGetTask1State();
}

class _ApiGetTask1State extends State<ApiGetTask1> {

    var jsonList;
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
    
  }
   void fetchData() async{
    try {
        var response=await Dio().get("https://dummy.restapiexample.com/api/v1/employees");
        if (response.statusCode==200) {
            print(response);
            setState(() {
              jsonList=response.data["data"] as List;

            });
          
        }
      else{
        print(response.statusCode);
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
            itemCount: jsonList==null?0 : jsonList.length,
            itemBuilder: (BuildContext context,int index){

                return
                SizedBox(height: 100,width: double.infinity,
                  child: Card(
                      child: ListTile(
                          trailing: ClipRRect(borderRadius: BorderRadius.circular(80),
                          child: Text(  "${jsonList[index]['employee_name']}" ),),
                      title: Text("${jsonList[index]["employee_salary"]}"),
                      
                      ),
                  ),
                );
            })
        ,
    );
  }
  
 
}