import 'package:flutter/material.dart';
import 'package:flutter_application_1/midTestDisplay.dart';

class Midtest extends StatelessWidget {

 
   Midtest({super.key});

 

    List imageS=[
  "asset/bag.jpeg",
  "asset/sunglss.jpeg",
  "asset/belt.jpeg",
  'asset/garden.jpeg',
  "asset/srtut earings.jpeg",

"asset/socks.jpeg",
"asset/keyring.jpeg"



];

List nameS=[
  "Vegabond sack",
  "Stella sunglasses",
  "Whitney belt",
  "Garden Strand",
  "Strut earings",
  "Varsity socks",
  "Weave keying"
];

List<String> priceS=[
"\$120",
"\$56",
'\$200',
'\$76',
"\$100",
"\$120",
"\$32"

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        title: Text("Cupertino Store",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),),
      body: 
      ListView.builder(
        itemCount: imageS.length,
        itemBuilder: (BuildContext context,int index){

        return InkWell(
          onTap: () {
         Navigator.push(context, MaterialPageRoute(builder: (context)=>Midtestdisplay(imageToShow: imageS[index],
          nametoShow: nameS[index], priceToShow: priceS[index])));
          
          },
      

          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Row(//mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 200,height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(imageS[index],
                      fit: BoxFit.cover,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(nameS[index]),
                        Text(priceS[index])
                      ],
                    ),
                  ),
              Spacer(),
                    
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.all(3), 
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.blueGrey, 
                          width: 2,
                        ),
                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.blueGrey,
                        size: 20,  
                    ),),
                  ),
                )

                  
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}




