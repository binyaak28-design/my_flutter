import 'package:flutter/material.dart';

class PersonalDetailsDisplayScreen extends StatelessWidget {
    var nameS,passwordS,contactS,genderS,hobbies,degreeS;
 PersonalDetailsDisplayScreen({super.key, required this.nameS,this.passwordS,this.contactS,this.genderS,this.degreeS,this.hobbies});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(" name : $nameS"),
          Text("Password : $passwordS"),
          Text("Contact# : $contactS"),
          Text("Degree : $degreeS"),
          Text("Gender : $genderS"),
          Text("Hobbies : $hobbies")



        ],
      ),
    );
  }
}