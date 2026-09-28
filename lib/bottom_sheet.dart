import 'package:flutter/material.dart';

class BottomSheetIntro extends StatefulWidget {
  const BottomSheetIntro({super.key});

  @override
  State<BottomSheetIntro> createState() => _BottomSheetIntroState();
}

class _BottomSheetIntroState extends State<BottomSheetIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      ElevatedButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (BuildContext context){
          
           return Container(height: 500,
           width: 700,
           
           color: Colors.purple,
            
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

                   Text("This is Bottom Sheet"),
                SizedBox(height: 200,width: double.infinity,
                  child: Image.asset('asset/fruitsalad.jpg',fit: BoxFit.fill,)),
              ],
            ));

        });

      }, child: Text("CLick")
      ),
    );
  }
}