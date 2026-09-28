import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Api_Moc_Display.dart';
import 'package:flutter_application_1/Api_Moc_UserModelClass.dart';

class ApiMocUser extends StatefulWidget {
  const ApiMocUser({super.key});

  @override
  State<ApiMocUser> createState() => _ApiMocUserState();
}

class _ApiMocUserState extends State<ApiMocUser> {
  List<Moc_User_Api>userList=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchValue();
  }
  void fetchValue()async{
    try {
      var datas=await Dio().get("https://api.escuelajs.co/api/v1/products");
      if (datas.statusCode==200) {
        setState(() {
          List user=datas.data;
          userList=user.map((item)=>
           Moc_User_Api.fromJson(item)
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
      appBar: AppBar(
        title: Text("Machine Test",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: 
      ListView.builder(
        itemCount: userList.length,
        itemBuilder: (
        
        Context,index){
          final product = userList[index];
          return SizedBox(width: 500,
            child: InkWell(
              onTap: () => Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>ApiMocDisplay(product: product))),
              child: Padding(
                padding: const EdgeInsets.only(left: 100,right: 100,top: 20),
                child: Card(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                
                       Container(
                              height: 100,
                              width: 100,
                              color: Colors.grey[200],
                              child: (product.images != null && product.images!.isNotEmpty)
                                  ? Image.network(
                                      product.images![0],
                                      fit: BoxFit.cover,
                                      errorBuilder: (context, error, stackTrace) =>
                                          const Icon(Icons.broken_image, size: 50),
                                    )
                                  : const Icon(Icons.image_not_supported, size: 50),
                            ),
                      Text(" Title :  ${product.title}"),
                      Text("Price : ${product.price}")
                
                    ],
                  ),
                ),
              ),
            ),
          );


      }),
      
      
      
    );
  }
}