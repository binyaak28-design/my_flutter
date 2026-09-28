import 'package:flutter/material.dart';

class SnackBarIntro extends StatefulWidget {
  const SnackBarIntro({super.key});

  @override
  State<SnackBarIntro> createState() => _SnackBarIntroState();
}

class _SnackBarIntroState extends State<SnackBarIntro> {
  @override
  Widget build(BuildContext context) {     
    return Scaffold(
      body: 
      ElevatedButton(onPressed: (){
        var snackBarVar=SnackBar(
          content: Text("Snack Bar Message") ,
        
        width: 800,
        backgroundColor: Colors.deepPurple,
        
        elevation: 8,
          behavior: SnackBarBehavior.floating,
          
    margin: EdgeInsets.all(50),
    duration: Duration(seconds: 3),
    

        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(12)),
        action: SnackBarAction(label: 'undo', onPressed: (){
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
        

        }),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBarVar);
        

       


      }, child: Text("Click")) 
      ,
    );
  }
}