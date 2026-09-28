import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_application_1/firebase_AddNote_Task.dart';
import 'package:flutter_application_1/firebasee_AddNote_Task.dart';

import 'package:flutter_application_1/firebasee_update_Task.dart';

class FirebaseTaskHome extends StatefulWidget {
  const FirebaseTaskHome({super.key});

  @override
  State<FirebaseTaskHome> createState() => _FirebaseTaskHomeState();
}

class _FirebaseTaskHomeState extends State<FirebaseTaskHome> {
  final CollectionReference note =
      FirebaseFirestore.instance.collection('note');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 84, 100, 247),
        title: Text("NOTE APP"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 62, 134, 241),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>FirebaseTaskAddnote()));
        },
        child: Icon(Icons.add),
      ),
      body: StreamBuilder(
        stream: note.snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot notesnap = 
                  snapshot.data?.docs[index];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.blueGrey,
                                  blurRadius: 15,
                                  blurStyle: BlurStyle.outer),
                            ],
                            border: Border.all(width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        height: 80,
                        child: ListTile(
                         
                          title: Text(notesnap['title']),
                          subtitle: Text(notesnap['notes']),
                          trailing: Wrap(
                            spacing: 5,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>FirebaseTaskUpdate(title: notesnap['title'],
                                           id: notesnap.id, notes:notesnap['notes'])
                                            ));
                                  },
                                  icon: Icon(Icons.edit)),
                              IconButton(
                                onPressed: () {
                                  note.doc(notesnap.id).delete();
                                },
                                icon: Icon(Icons.delete),
                                color: Colors.red,
                              )
                            ],
                          ),
                        )),
                  );
                });
          }

          return Container();
        },
      ),
    );
  }
}