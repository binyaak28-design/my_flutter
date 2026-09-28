import 'package:flutter/material.dart';

class BottomNavigationBarIntro extends StatefulWidget {
  const BottomNavigationBarIntro({super.key});

  @override
  State<BottomNavigationBarIntro> createState() => _BottomNavigationBarIntroState();
}

class _BottomNavigationBarIntroState extends State<BottomNavigationBarIntro> {

  var initilalIndex=0;
  List screenIems=[
    Icon(Icons.home),
    Container(child: Text("Hiii",style: TextStyle(fontSize: 50),)),

   

      SizedBox(width: double.infinity,
      height: double.infinity,
        child: Image.asset('asset/delhi.jpg',
        fit: BoxFit.fill,),
      ),
      
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(items: 
      [
        BottomNavigationBarItem(icon: Icon(Icons.home),
        label: 'Home',
        backgroundColor: Colors.amber
        ),
        BottomNavigationBarItem(icon: Icon(Icons.wallet),
        label: "Wallet",
       
        backgroundColor: Colors.blue),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),
        label: "Favorite",
        backgroundColor: Colors.green)
        ,


        
      ],
     
      currentIndex: initilalIndex,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.amber,
       showSelectedLabels: false,
      backgroundColor: Colors.pink,
      iconSize: 30,
      onTap: (int index){
        setState(() {
          initilalIndex=index;
        });

      },) 
      ,
      appBar: AppBar(
        title: Text("Bottom Sheet"),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: 
             screenIems.elementAt(initilalIndex))
      ,
    );
  }
}