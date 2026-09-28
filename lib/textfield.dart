import 'package:flutter/material.dart';

class Textfieldwidget extends StatelessWidget {
  const Textfieldwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        decoration: InputDecoration(labelText: "Enter your name"),
      ),
    );
  }
}