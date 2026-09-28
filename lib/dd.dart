import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Dd extends StatefulWidget {
  const Dd({super.key});

  @override
  State<Dd> createState() => _DdState();
}

class _DdState extends State<Dd> {

  DateTime selectdDate=DateTime.now();
  TimeOfDay selectedTime=TimeOfDay.now();

  void showDate(BuildContext context) async{
  final DateTime? picked=await showDatePicker(context: context,
  initialDate: selectdDate, 
  
  firstDate: DateTime(2000), lastDate: DateTime(2300));
  if (picked!=null && selectdDate!=null) {
    setState(() {
      selectdDate=picked;
    });

    
  }

}
void showTime(BuildContext context)async {
  final TimeOfDay? picked=await showTimePicker(context: context, initialTime: selectedTime);

  if (picked!=null && selectedTime!= null) {
    setState(() {
      selectedTime=picked;
    });
    
  }
}


  @override
  Widget build(BuildContext context) {
    var formattedDate=DateFormat("dd/MM/yyyy").format(selectdDate);
    var formattedTime=selectedTime.format(context);
    return Scaffold(
      body: Column(
        children: [
          Text(formattedDate),
          ElevatedButton(onPressed: (){
            showDate(context);
          }, child: Text("data")),
            Text(formattedTime),
             ElevatedButton(onPressed: (){
            showTime(context);
          }, child: Text("data"))
        ],
      ),
    );
  }
}



