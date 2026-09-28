import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebase2mine_addUser.dart';
import 'package:flutter_application_1/firebase2mine_update.dart';

class Firebase2mineHomescreen extends StatefulWidget {
  const Firebase2mineHomescreen({super.key});

  @override
  State<Firebase2mineHomescreen> createState() => _Firebase2mineHomescreenState();
}

class _Firebase2mineHomescreenState extends State<Firebase2mineHomescreen> {
 final CollectionReference donor=
 FirebaseFirestore.instance.collection("donor");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("BLOOD DONATION APP"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>Firebase2mineAdduser()));
        },
        child: Icon(Icons.add),
      ),
      body: StreamBuilder(
        stream: donor.snapshots(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (context, index) {
                  final DocumentSnapshot donorsnap = 
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
                          leading: CircleAvatar(
                            radius: 30,
                            child: Text(donorsnap['group']),
                          ),
                          title: Text(donorsnap['name']),
                          subtitle: Text(donorsnap['phone']),
                          trailing: Wrap(
                            spacing: 5,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>Firebase2mineUpdate(
                                              nme:donorsnap['name'] , 
                                              phn: donorsnap['phone'], 
                                              grp:donorsnap['group']
                                              , id:donorsnap.id)
                                          ));
                                  },
                                  icon: Icon(Icons.edit)),
                              IconButton(
                                onPressed: () {
                                  donor.doc(donorsnap.id).delete();
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