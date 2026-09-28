import 'package:flutter/material.dart';

class GridViewBuilderTask extends StatelessWidget {
  const GridViewBuilderTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      GridView.builder(gridDelegate:
      /* SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,

      mainAxisSpacing: 10,crossAxisSpacing: 20),*/
      SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent:50,
      crossAxisSpacing: 10,mainAxisSpacing: 10),
       itemBuilder: 


      (BuildContext context,int index){
        return Container(
          height: 100,width: 200,
          color: Colors.amber,
        );
      },
      itemCount: 15,
        
     
      ),
    );
  }
}