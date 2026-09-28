import 'package:dio/dio.dart';




import 'package:flutter/material.dart';


class ApiGetTask2 extends StatefulWidget {
  const ApiGetTask2({super.key});

  @override
  State<ApiGetTask2> createState() => _ApiGetTask2State();
}

class _ApiGetTask2State extends State<ApiGetTask2> {
    var jsonList;
    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
    
  }
   void fetchData() async{
    try {
        var response=await Dio().get("https://myfakeapi.com/api/cars/");
        if (response.statusCode==200) {
            print(response.data);
            setState(() {
              jsonList=response.data["cars"]as List;

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
                          child: Text("${jsonList[index]["car"]}"),),
                      title: Text("${jsonList[index]["price"]}"),
                      
                      ),
                  ),
                );
            })
        ,
    );
  }
}




