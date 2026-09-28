import 'package:flutter/material.dart';

class Newq extends StatefulWidget {
  const Newq({super.key});

  @override
  State<Newq> createState() => _NewqState();
}

class _NewqState extends State<Newq> {

  String dropvalue="abcd";
  List<String> mitems=[
    "abcd",
    'asr',
    'adg',
    'qwe'

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
  DropdownButton(
    value: dropvalue,

    items: mitems.map((String vari){
      return DropdownMenuItem(
        child: Text(vari),
      value: vari,);
    }).toList(), onChanged:(String? val){
      setState(() {
        dropvalue=val!;
      });
    } )
    );
  }
}