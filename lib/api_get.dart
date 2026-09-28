import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
//import 'package:testapp/sample.dart';


class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {

var jsonList;


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchdata();
  }

void  fetchdata()async {

try{
var response=await Dio().
get("https://fake-json-api.mock.beeceptor.com/companies");
if(response.statusCode==200){
  print(response);
setState(() {
  jsonList=response.data as List;

});
}else{
  print(response.statusCode);
}
}catch(e){
  print(e);
}


}
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.blue,title: Text("Company"),centerTitle: true,),
      body: 
    
          ListView.builder(
            itemCount:jsonList == null ? 0 : jsonList.length ,
           itemBuilder: (BuildContext context,int index){
            return SizedBox(height: 100,width: double.infinity,
              child: Card(child: ListTile(  
                trailing: ClipRRect(
                  borderRadius:BorderRadius.circular(80) ,
                 child:Image.network(jsonList[index]['logo']) ,),
                
                title: Text(jsonList[index]['name']),)),
            );
          }),
      
          
        
    );
  }
}
