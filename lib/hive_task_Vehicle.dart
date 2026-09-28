

import 'package:flutter/material.dart';
import 'package:flutter_application_1/hive_task_model.dart';
import 'package:hive/hive.dart' show Hive;
import 'package:hive_flutter/adapters.dart';

class HiveTaskVehicle extends StatefulWidget {
  const HiveTaskVehicle({super.key});

  @override
  State<HiveTaskVehicle> createState() => _HiveTaskVehicleState();
}

class _HiveTaskVehicleState extends State<HiveTaskVehicle> {
   
   final _box=Hive.box<Vehicle>("VehicleBox");
  TextEditingController modelCntrl=TextEditingController();
  TextEditingController ownerNameCntrl=TextEditingController();
  TextEditingController numberCntrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 300,
            child: TextField(
              controller: modelCntrl,
              decoration: InputDecoration(
                labelText: "Vehicle Model",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(0))
              ),
            ),
          ),
           SizedBox(width: 300,
            child: TextField(
              controller: ownerNameCntrl,
              decoration: InputDecoration(
                labelText: "Owner's Name",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(0))
              ),
            ),
          ),
           SizedBox(width: 300,
            child: TextField(
              controller: numberCntrl,
              decoration: InputDecoration(
                labelText: "Vehicle Number",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(0))
              ),
            ),
          ),


          ElevatedButton(onPressed: (){
           final carModel=modelCntrl.text;
           final ownerName=ownerNameCntrl.text;
           final carNumber=numberCntrl.text;

            addVehicle(Vehicle(carModel: carModel,
            ownerName: ownerName, carNumber: carNumber));

          }, child:Text("Submit")),
          Expanded(
            child: ValueListenableBuilder(valueListenable: _box.listenable(),
             builder: (context ,Box<Vehicle> box, _) {
              if (box.values.isEmpty){
                  return Center(child: Text('No vehicle added'));
              }
              return
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(itemCount: box.length,
                  itemBuilder:(context, index){
                    final vehicle=box.getAt(index);
                    return ListTile(
                      title: Text("${vehicle?.carModel},${vehicle?.carNumber},${vehicle?.ownerName}"),
                   trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(onPressed: (){
                        _showUpdateDialog(index,vehicle!);
                
                      }, icon:Icon(Icons.edit)),
                      IconButton(onPressed: (){
                        deleteVehicle(index);
                      }, icon: Icon(Icons.delete))
                    ],
                   ),
                   
                    );
                
                  
                } 
                ),
              );
            
             }),
          )
          
        ],
      ),
    );

  
  }

  void addVehicle(Vehicle vehicle) {
    
    _box.add(vehicle);
    modelCntrl.clear();
    ownerNameCntrl.clear();
    numberCntrl.clear();
    
  
  }

 
  void deleteVehicle(int index){
    _box.deleteAt(index);
  }

void _showUpdateDialog(int index, Vehicle vehicle){
  modelCntrl.text=vehicle.carModel;
  ownerNameCntrl.text=vehicle.ownerName;
  numberCntrl.text=vehicle.carNumber;
  showDialog(context: context, builder: (context){

    return AlertDialog(
      title: Text('Update Vehicle'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         TextField(
          controller: modelCntrl,
          decoration: InputDecoration(labelText: "Model"),
         ),
           TextField(
          controller: ownerNameCntrl,
          decoration: InputDecoration(labelText: "Owner's name"),
         ),
           TextField(
          controller: numberCntrl,
          decoration: InputDecoration(labelText: "Vehicle number"),
         )
        ],
      ),
      actions: [
       TextButton(onPressed: (){
        final updatedModel=modelCntrl.text;
        final updatedOwner=ownerNameCntrl.text;
        final updatedNumder=numberCntrl.text;
        updateVehicle(index,Vehicle(carModel: updatedModel,
         ownerName: updatedOwner, carNumber: updatedNumder));
         Navigator.pop(context);
      
       }, child:Text("Udated"))
      ],
    );

  });

}

  void updateVehicle(int index, Vehicle updateVehicle) {
    _box.putAt(index, updateVehicle);
    modelCntrl.clear();
    ownerNameCntrl.clear();
    numberCntrl.clear();
  }
  
  
}
