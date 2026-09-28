import 'package:flutter/material.dart';
import 'package:hive/hive.dart' show Box, Hive;
import 'package:hive_flutter/hive_flutter.dart';
//import 'package:hive/hive.dart';


void main() async {
  // Initialize Hive
  
  await Hive.initFlutter();
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Box to store data
  Box? _box;

  // Variables to handle user input and saved data
  TextEditingController _controller = TextEditingController();
  String _storedData = "";

  @override
  void initState() {
    super.initState();
    _openBox();  // Open the Hive box when the app starts
  }

  // Open the Hive box
  Future<void> _openBox() async {
    _box = await Hive.openBox('myBox');
    _getData();
  }

  // Save data to the box
  void _saveData() {
    if (_controller.text.isNotEmpty) {
      _box!.put('name', _controller.text);
      _getData();  // Update UI after saving
    }
  }

  // Get data from the box
  void _getData() {
    setState(() {
      _storedData = _box!.get('name', defaultValue: 'No data saved');
    });
  }

  // Close the box when the app is disposed
  @override
  void dispose() {
    _box?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hive Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveData,
              child: Text('Save Name'),
            ),
            SizedBox(height: 20),
            Text('Stored Name: $_storedData'),
          ],
        ),
      ),
    );
  }
}