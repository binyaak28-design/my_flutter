                                           import 'package:flutter/material.dart';

class TaskRowColoumn extends StatelessWidget {
  const TaskRowColoumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceAround  ,crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [

         SizedBox(height: 30,),    Icon(Icons.search,color: Colors.white,size: 45,),SizedBox(height: 20,), Text("Search",style: TextStyle(color: Colors.white),),
            SizedBox(height: 65,),  Icon(Icons.delete,color: Colors.white,size: 45,),SizedBox(height: 20,), Text("Delete",style: TextStyle(color: Colors.white),),
            SizedBox(height: 65,),   Icon(Icons.lock,color: Colors.white,size: 45,),SizedBox(height: 20,), Text("Lock",style: TextStyle(color: Colors.white),),
             SizedBox(height: 65,),   Icon(Icons.thumb_up,color: Colors.white,size: 45,),SizedBox(height: 20,), Text("Thumb Up",style: TextStyle(color: Colors.white),)
          ],),


 Column(
 children: [SizedBox(height: 30,), 
   Icon(Icons.home,color: Colors.white,size: 45,),SizedBox(height: 20,), Text("Home",style: TextStyle(color: Colors.white,)),
      SizedBox(height: 65,), Icon(Icons.visibility,color: Colors.white,size: 45,),SizedBox(height: 20,), Text("Visibility",style: TextStyle(color: Colors.white),),
       SizedBox(height: 65,),        Icon(Icons.schedule,color: Colors.white,size: 45,),SizedBox(height: 20,), Text("Schedule",style: TextStyle(color: Colors.white),),

 ],),
 
 Column(crossAxisAlignment: CrossAxisAlignment.center,
  children: [
 SizedBox(height: 30,),  Icon(Icons.account_circle,color: Colors.white,size: 45,), SizedBox(height: 20,),Text("Account\n  Circle",style: TextStyle(color: Colors.white),),
           SizedBox(height: 65,),   Icon(Icons.shopping_cart,color: Colors.white,size: 45,),SizedBox(height: 20,), Text("Shoping \n   Cart",style: TextStyle(color: Colors.white),),
             
 ],),

  Column(
    children: [
   SizedBox(height: 30,), Icon(Icons.settings,color: Colors.white,size: 45,), SizedBox(height: 25,), Text("Settings",style: TextStyle(color: Colors.white),),
             
             
 ],)
        ],
      ),
    );
  }
}