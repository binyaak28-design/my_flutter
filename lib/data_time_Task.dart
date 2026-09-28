import 'package:flutter/material.dart';
import 'package:flutter_application_1/date_time_Task_NewPage.dart';
import 'package:intl/intl.dart';


class DateTimeTask extends StatefulWidget {
  const DateTimeTask({super.key});

  @override
  State<DateTimeTask> createState() => _DateTimeTaskState();
}

class _DateTimeTaskState extends State<DateTimeTask> {
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

  TextEditingController textEditingControllerDate=TextEditingController();
TextEditingController textEditingControllerTime=TextEditingController();
TextEditingController nameController=TextEditingController();
TextEditingController emailContrl=TextEditingController();
TextEditingController msgCntrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
     String formattedDate=DateFormat('dd/MM/yyyy').format(selectedDate);
    String formattedTime=selectedTime.format(context);
      setState(() {
          textEditingControllerDate.text = formattedDate;
          textEditingControllerTime.text=formattedTime;
        });
    return Scaffold(
      
    appBar: AppBar(title: Text("Date and Time Task"),backgroundColor: Colors.blue,),
    body: 
    SingleChildScrollView(
      child: Center(
    //    child: SizedBox(height: 800,width: 650,
         
            child: SizedBox(width: 700,
              child: Card(elevation: 5,
              margin: EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                            
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(alignment: Alignment.centerLeft,
                        child: Text("Contact Us",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)),
                      ),
                      Align(alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("How can we Help you",style: TextStyle(color: const Color.fromARGB(255, 39, 38, 38)),),
                        )),
                        SizedBox(height: 20,),
                      SizedBox(width: 600,height: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              prefixIcon: Container(height: double.infinity,
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(121, 194, 201, 206)
                                ),
                                child: Icon(Icons.person)),
                              labelText: "Your Name",
                                border:OutlineInputBorder(borderRadius: BorderRadius.circular(0))
                               
                            ),
                          ),
                        ),
                      ),  
                      SizedBox(width: 600,height: 60,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: emailContrl,
                            decoration: InputDecoration(
                              prefixIcon: Container(
                                 decoration: BoxDecoration(
                                  color: const Color.fromARGB(121, 194, 201, 206)
                                ),
                                child: Icon(Icons.alternate_email)),
                              labelText: "Email",
                                border:OutlineInputBorder()
                               
                            ),),
                        ),
                      ),
                        SizedBox(width: 600,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              
                              controller: msgCntrl,
                             
                               maxLines: 4,
                               keyboardType: TextInputType.multiline,
                                      
                             
                              decoration: InputDecoration(
                                alignLabelWithHint: true,
                               labelText: 'Message',
                              border:OutlineInputBorder()
                              
                             
                              ),
                            ),
                          ),
                        ),
              SizedBox(height: 20),
                        SizedBox(width: 580,height: 60,
                          child: TextField(
                             controller: textEditingControllerDate,
                            onTap: () =>  _selectDate(context),
                            decoration: InputDecoration(
                              prefixIcon: Container(
                                 decoration: BoxDecoration(
                                  color: const Color.fromARGB(121, 194, 201, 206)
                                ),child: Icon(Icons.calendar_today)),
                              labelText: "Your Birth Date",
                               border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0)
                              )
                          
                            ),
                          ),
                        ),
                          SizedBox(height: 20),
                        SizedBox(width: 580,height: 60,
                          child: TextField(
                             controller: textEditingControllerTime,
                               readOnly: true,
                            onTap: () =>  _selectedTime(context),
                            decoration: InputDecoration(
                              prefixIcon: Container(
                                 decoration: BoxDecoration(
                                  color: const Color.fromARGB(121, 194, 201, 206)
                                ),
                                child: Icon(Icons.time_to_leave
                                ),
                              ),
                              labelText: "Enter Time",
                              labelStyle: TextStyle(color: Colors.blueGrey),
                               border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0)
                              )
                          
                            ),
                          ),
                        ),
                        SizedBox(height: 30,),
                     
                             Align(alignment: Alignment.centerRight,
                              child: SizedBox(height: 40,width: 140,
                       
                              child: ElevatedButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>DateTimeTaskNewpage(
                                  nameT: nameController.text,emailT: emailContrl.text,msgT: msgCntrl.text,
                                  dobT:textEditingControllerDate.text ,timeT: textEditingControllerTime.text
                                )));
                                
                                      
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                
                              ),
                               child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.send,color: Colors.white,),
                                  SizedBox(width: 5,),
                                  Text("Submit",style: TextStyle(color: Colors.white),)
                                ],
                                      
                              ),
                              
                                                   
                                                      ),
                            ),
                        )
                            
                    ],
                  ),
                ),
              ),
            ),
          ),
      ),
  
 
    );
  }
}