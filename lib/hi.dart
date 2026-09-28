import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class Hi extends StatefulWidget {
  const Hi({super.key});

  @override
  State<Hi> createState() => _HiState();
}

class _HiState extends State<Hi> {
  TextEditingController txt=TextEditingController();
  String stordval="";
  Box? box;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

   
    openBox();
  }
  void openBox() async{
     box= await Hive.box("box");

}




  void saveData(BuildContext context) {   
    if (txt.text.isEmpty) {
      box!.put("key", txt.text);
      getData();
      
    }


}

void getData(){
  setState(() {
   stordval= box!.get("key",defaultValue: "No file");
    
  });
 
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        children: [
          TextField(
            controller:txt ,
            decoration: InputDecoration(
              labelText: "Hoo"
            ),
          ),
          ElevatedButton(onPressed: (){
           saveData(context);
          }, child: Text("data")),
          Text("the value :$stordval")
        ],
      ),
    );
  }
}



void main ()async{
  await Hive.initFlutter();

}

