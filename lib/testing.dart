import 'package:flutter/material.dart';

class TextInStackContainer extends StatelessWidget {
  const TextInStackContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multiple Texts in Stack")),
      body: Center(
        child: Container(
          height: 250,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.orange[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: const [
              Positioned(
                top: 10,
                left: 10,
                child: Text(
                  "Top Left",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Text(
                  "Top Right",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 10,
                child: Text(
                  "Bottom Left",
                  style: TextStyle(fontSize: 16, color: Colors.blue),
                ),
              ),
              Positioned(
                bottom: 10,
                right: 10,
                child: Text(
                  "Bottom Right",
                  style: TextStyle(fontSize: 16, color: Colors.green),
                ),
              ),
              Positioned(
                top: 100,
                left: 100,
                child: Text(
                  "Center",
                  style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
