import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class Hiii extends StatefulWidget {
  const Hiii({super.key});

  @override
  State<Hiii> createState() => _HiiiState();
}

class _HiiiState extends State<Hiii> {
TextEditingController txt=TextEditingController();
String storedData="";
Box? box;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    openBox();
  }
void openBox()async {
  box=await Hive.box("name");
}

void saveData(BuildContext context) {
  box!.put("key", txt.text);
  getData();

}
void getData(){
  storedData=box!.get("key",defaultValue: "none");
}

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(
        children: [
          TextField(
            controller: txt,

          ),
          ElevatedButton(onPressed: (){
            saveData(context);
          }, child: Text("data")),
          Text(storedData)
        ],
      ),
    );
  }
}

void main()async{
  await Hive.initFlutter();

}

