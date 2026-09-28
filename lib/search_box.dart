import 'package:flutter/material.dart';

class SearchIntro extends StatefulWidget {
  const SearchIntro({super.key});

  @override
  State<SearchIntro> createState() => _SearchIntroState();
}


class _SearchIntroState extends State<SearchIntro> {
  TextEditingController edt=TextEditingController();
    List allVal=[
      "Apple",
      "Orange",
      "Grapes",
      "Kiwi",
      "Mango",
      "Pineapple",
      "Jackfruits",

    ];
    List filteredValue=[];
    @override
  void initState() {
    // TODO: implement initState
    super.initState(
   
    );
     filteredValue.addAll(allVal);
  }
  void filterValueFun(String query){
    setState(() {

      filteredValue=allVal.
      where((value)=>value.toLowerCase().contains(query.toLowerCase())).toList();
     /* filteredValue=allVal
      .where((value)=>value.toLowerCase().contains(query.toLowerCase())).toList();*/
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        children: [
        TextField(
          controller: edt,
        
        decoration: InputDecoration(
          labelText: "Search",
           border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),)
        ),
          onChanged: filterValueFun,
        ) ,
        Expanded(
          child: ListView.builder(itemCount: filteredValue.length,
            itemBuilder: (BuildContext context, int index){
              
             return ListTile(
              title: Text(filteredValue[index]),
             );
            }),
        )

        ],
      ),
    ) ;
    }
}