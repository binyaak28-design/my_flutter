import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

class MotionToastIntro extends StatefulWidget {
  const MotionToastIntro({super.key});

  @override
  State<MotionToastIntro> createState() => _MotionToastIntroState();
}

class _MotionToastIntroState extends State<MotionToastIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Column(mainAxisAlignment: MainAxisAlignment.spaceAround,crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){ 
            MotionToast.success(description: Text("Motion toast succes")).show(context);
          
          }, child: Text("click",style: TextStyle(color: Colors.black),)),


   IconButton(onPressed: (){
    MotionToast.error(description: Text("Motion Toast Error")).show(context);

   }, icon: Icon(Icons.home)),

   ElevatedButton(onPressed: (){
    MotionToast.info(description: Text("Info")).show(context);

   }, child: Text("Info")),

   TextButton(onPressed: (){
    
    MotionToast.warning(description: Text("Warning")).show(context);
   }, child: Text("Click for warning")),
 


        ],
      ),


    );
  }
}