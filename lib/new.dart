import 'package:flutter/material.dart';

class ComposingWidgets extends StatelessWidget {
  const ComposingWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Composing widgets"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.purple,
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

