import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebasee_Home_Task.dart';

class FirebaseTaskAddnote extends StatefulWidget {
  const FirebaseTaskAddnote({super.key});

  @override
  State<FirebaseTaskAddnote> createState() => _FirebaseTaskAddnoteState();
}

class _FirebaseTaskAddnoteState extends State<FirebaseTaskAddnote> {
   final CollectionReference note =
      FirebaseFirestore.instance.collection('note');
  final txtcntrl1 = TextEditingController();
  final txtcntrl2 = TextEditingController();
   void addnote() {
    final data = {
      'title': txtcntrl1.text,
      
      'notes': txtcntrl2.text
    };
    note.add(data);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
         appBar: AppBar(
        title: Text("Add Note"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: txtcntrl1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Title"),
                  hintText: "Enter title"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: txtcntrl2,
              maxLength: 10,
              maxLines: 5,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Note"),
                  hintText: "Enter note here"),
            ),
          ),
        
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>FirebaseTaskHome()));
                addnote();
              },
              child: Text("submit"),
              style: ButtonStyle(
                  minimumSize:
                      MaterialStatePropertyAll(Size(double.infinity, 50))),
            ),
          )
        ],
      ),
 
      
    );
  }
}