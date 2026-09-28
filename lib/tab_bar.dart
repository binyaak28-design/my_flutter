import 'package:flutter/material.dart';

class TabBarIntro extends StatefulWidget {
  const TabBarIntro({super.key});

  @override
  State<TabBarIntro> createState() => _TabBarIntroState();
}

class _TabBarIntroState extends State<TabBarIntro> {
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
               Tab(icon: Icon(Icons.flight),),
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.wallet),)
             
            ]),
        ),
        body: 
        TabBarView(
          children:[  
       
         Text("I am the first Tab"),
         Image.asset('asset/delhi.jpg'),
         Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.pink,
         )
        ]),

        
      ),
    );
  }
}