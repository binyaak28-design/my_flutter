import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebasee_Home_Task.dart';

class FirebaseTaskUpdate extends StatefulWidget {
    final String title, notes, id;

  const FirebaseTaskUpdate({super.key, required this.title,
     
      required this.id, required this.notes});

  @override
  State<FirebaseTaskUpdate> createState() => _FirebaseTaskUpdateState();
}

class _FirebaseTaskUpdateState extends State<FirebaseTaskUpdate> {
  final CollectionReference note =
      FirebaseFirestore.instance.collection('note');
  final txtcntrl1 = TextEditingController();
  final txtcntrl2 = TextEditingController();
   void updateuser(docid) {
    final data = {
      'title': txtcntrl1.text,
      'notes': txtcntrl2.text,
      
    };
    note.doc(docid).update(data);
  }

  @override
  Widget build(BuildContext context) {

     txtcntrl1.text = widget.title;
    txtcntrl2.text = widget.notes;
    
    var docid = widget.id;
    return Scaffold(
       appBar: AppBar(
        title: Text("Update Details"),
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
                  hintText: "Enter Title"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: txtcntrl2,
              maxLength: 10,
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
                updateuser(docid);
              },
              child: Text("update"),
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