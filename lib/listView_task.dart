import 'package:flutter/material.dart';
import 'package:flutter_application_1/listView_Task_DisplayPage.dart';
//import 'package:flutter_application_1/listView_Task_HomePage.dart';

class TaskListView extends StatelessWidget {
  //const TaskListView({super.key});
  
 List <String> imagetoShows=["asset/delhi.jpg",
              //Image.asset("flutter_application_1/asset/laptop.jpg"),
          "asset/london.jpg",
              "asset/newyork.jpg",
          "asset/vancouver.jpg",
               "asset/tokyo.jpg"];
                List city=["Delhi",'London','Newyork','Vancouver',"tokyo"
                ];
List country=['India','Britain','USA','Canada','Japan'];
List details=['Population: 19 mill',
             'Population: 8 mill',
            'Population: 2.4 mill',
            'Population: 8.1 mill',
            'Population: 1.9 mill'];

  TaskListView({super.key}); 


  @override
  Widget build(BuildContext context) {
   


 

    return Scaffold(
      appBar: AppBar(title: Text("Cities around the world",
      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),backgroundColor: Colors.amber,),
     body: 
     
    ListView.builder(itemBuilder: 
     (BuildContext context,int index){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child:SizedBox(  height: 110,width: 300,
          child: InkWell(
            onTap: (){
               Navigator.push(context,
                MaterialPageRoute(builder: (Context)=>
            DisplayImageScreen(imagetoshow: imagetoShows[index])));
            },
            child: Card(
              
                elevation: 2,
            
            //  color:Color[index],
                  child: Row(
            children: [
              SizedBox(width: 40),
             SizedBox(height: 110,width: 110,
            child:Image.asset(imagetoShows[index]) 
                 // child: Image.asset('flutter_application_1/asset/fruitsalad.jpg'),
                  ),
            SizedBox(width: 30),
             Column(mainAxisAlignment: MainAxisAlignment.spaceAround,crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5),
                Text(city[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                SizedBox(height: 5),
                Text(country[index],style: TextStyle(color: const Color.fromARGB(255, 145, 144, 144),fontSize: 16),),
                Text(details[index],style: TextStyle(color: const Color.fromARGB(255, 143, 142, 142),fontSize: 12))
              ],
            
            )
            ],
                  )
                 
            ), 
          ),
        )
        );
    

     },
     itemCount: 5,
     ),
    );
  }
}