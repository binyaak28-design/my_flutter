import 'package:flutter/material.dart';

class ListviewBuilder extends StatefulWidget {
 const ListviewBuilder({super.key});

  @override
  State<ListviewBuilder> createState() => _ListviewBuilderState();
}

class _ListviewBuilderState extends State<ListviewBuilder> {
List Color=[Colors.yellowAccent,Colors.black,Colors.blue,Colors.red,Colors.green];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
   /*  ListView.builder(itemBuilder: 
     (BuildContext context,int index){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,width: 300,
          color:Color[index],
        
        ),
      );
      

     },
     itemCount: 5,
     ),*/
   
     ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: 
     (BuildContext context,int index){
     return Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
          height: 100,width: 50,
       color: Color[index],
        ),
        
     );
     }, 
     separatorBuilder: (BuildContext context,int index){
      return Divider(

      );
     }
     , itemCount: 5)
    );
  }
}