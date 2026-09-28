import 'package:flutter/material.dart';
import 'package:flutter_application_1/hive_mine_model.dart';
import 'package:hive/hive.dart' show Hive;
import 'package:hive_flutter/adapters.dart';

class Hive2Mine extends StatefulWidget {
  const Hive2Mine({super.key});

  @override
  State<Hive2Mine> createState() => _Hive2MineState();
}

class _Hive2MineState extends State<Hive2Mine> {
final _box = Hive.box<Persons>('peopleBox2');
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Person CRUD')),
      body: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextField(
            controller: _ageController,
            decoration: InputDecoration(labelText: 'Age'),
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(
            onPressed: () {
              final name = _nameController.text;
              final age = int.tryParse(_ageController.text) ?? 0;
              _addPerson(Persons(name: name, age: age));
            },
            child: Text('Add Person'),
          ),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: _box.listenable(),
              builder: (context, Box<Persons> box, _) {
                if (box.values.isEmpty) {
                  return Center(child: Text('No people added'));
                }
                return ListView.builder(
                  itemCount: box.length,
                  itemBuilder: (context, index) {
                    final person = box.getAt(index);
                    return ListTile(
                      title: Text('${person?.name}, Age: ${person?.age}'),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () => _showUpdateDialog(index, person!),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () => _deletePerson(index),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _addPerson(Persons person) {
    _box.add(person);
    _nameController.clear();
    _ageController.clear();
  }

  void _deletePerson(int index) {
    _box.deleteAt(index);
  }

  void _showUpdateDialog(int index, Persons person) {
    // Pre-fill the dialog with the existing values
    _nameController.text = person.name;
    _ageController.text = person.age.toString();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Update Person'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: _ageController,
                decoration: InputDecoration(labelText: 'Age'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                final updatedName = _nameController.text;
                final updatedAge = int.tryParse(_ageController.text) ?? person.age;

                _updatePerson(index, Persons(name: updatedName, age: updatedAge));
                Navigator.of(context).pop();
              },
              child: Text('Update'),
            ),
          ],
        );
      },
    );
  }

  void _updatePerson(int index, Persons updatedPerson) {
    _box.putAt(index, updatedPerson); // Update person in Hive box
    _nameController.clear();
    _ageController.clear();
  }
}

  
  
