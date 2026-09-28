import 'package:flutter/material.dart';

class DateTimeTaskNewpage extends StatefulWidget {
   final String? nameT,emailT,msgT,dobT,timeT;
  DateTimeTaskNewpage({super.key,required this.nameT,this.emailT,this.msgT,this.dobT,this.timeT});

  @override
  State<DateTimeTaskNewpage> createState() => _DateTimeTaskNewpageState();
}

class _DateTimeTaskNewpageState extends State<DateTimeTaskNewpage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 183, 202),
      body:
        Center(
          child: SizedBox(width: 600,height: 500,
            child: Card(
              elevation: 10,
              color: const Color.fromARGB(255, 252, 244, 171),
              child: 
              Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("DETAILS :",style: TextStyle(color: Colors.pink,fontSize: 40,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,decorationColor: Colors.pink)),
             
                Text("Name : ${widget.nameT}",style: TextStyle(color: Colors.pink,)),
                Text("Email : ${widget.emailT}",style: TextStyle(color: Colors.pink,)),
                Text("Message : ${widget.msgT} ",style: TextStyle(color: Colors.pink,)),
                Text("DOB : ${widget.dobT}",style: TextStyle(color: Colors.pink,)),
                Text("Time : ${widget.timeT}",style: TextStyle(color: Colors.pink,)),
              ],
            ),
            ),
          ),
        )
        
       
      
    );
  }
}