import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeIntro extends StatefulWidget {
  const DateTimeIntro({super.key});

  @override
  State<DateTimeIntro> createState() => _DateTimeIntroState();
}

class _DateTimeIntroState extends State<DateTimeIntro> {
  DateTime selectedDate=DateTime.now();
 TimeOfDay selectedTime=TimeOfDay.now();
   void _selectDate(BuildContext context)async{
    final DateTime? picked=await showDatePicker(context: context,
    initialDate: selectedDate,
     firstDate: DateTime(2000),
      lastDate: DateTime(2100));
      if(picked !=null && selectedDate != null){
   setState(() {
     
     selectedDate=picked;
   });
      }
    

  }
  void _selectedTime(BuildContext context) async{
    final TimeOfDay? picked=await showTimePicker(context: context,
     initialTime: selectedTime);
  if(picked !=null && selectedTime != null){
   setState(() {
     
     selectedTime=picked;
   });
      }
    

  }
  @override
  Widget build(BuildContext context) {

    String formattedDate=DateFormat("dd/mm/yyyy").format(selectedDate);
    String formattedTime=selectedTime.format(context);
    return Scaffold(

      
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(" select Date: $formattedDate",style: TextStyle(color: Colors.black,fontSize: 20),),
            ElevatedButton(onPressed: (){
            _selectDate(context);
          }, child: Text("Click for date")),
          Text(" select Time: $formattedTime", style: TextStyle(color: Colors.black,fontSize: 20),),
        
          ElevatedButton(onPressed: (){
             _selectedTime(context);
          }, child: Text("Click for Time"))
        ],
      ),

    );
  }
}