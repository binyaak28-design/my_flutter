
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/GPay_Bank_Transfer.dart';
import 'package:flutter_application_1/GPay_mobile_recharge.dart';

class Gpay extends StatefulWidget {
  const Gpay({super.key});

  @override
  State<Gpay> createState() => _GpayState();
}

class _GpayState extends State<Gpay> {
 List<Map<String, dynamic>> items=[
{  "type":"text","text":"B","color":Colors.pink,"name":"Binya"},
{"type":"text","text":"P","color":Colors.blue,"name":"Praveen"},
{"type":"image","image":"asset/sawyerr.jpeg","name":"Nrithi"},
{"type":"image","image":"asset/jack.jpeg","name":"Ribin"},
 { "type":"text","text":"H","color":const Color.fromARGB(255, 30, 233, 115),"name":"Hrithik"},
{"type":"text","text":"S","color":const Color.fromARGB(255, 198, 243, 33),"name":"Swethe"},
{"type":"image","image":"asset/michel.jpeg","name":"Haritha"},
{  "type":"text","text":"A","color":const Color.fromARGB(255, 153, 7, 7),"name":"Achu"},
{"type":"text","text":"R","color":const Color.fromARGB(255, 51, 11, 145),"name":"Richu"},
{"type":"image","image":"asset/sawyerr.jpeg","name":"Bindhu"},

];
List<Map<String,dynamic>>itemsN1=[
  {"type":"image","image":"flutter_application_1/asset/vi.png" ,"name":"Vi Prepaid"},
   {"type":"image","image":"asset/bsnl.png" ,"name":"BSNL Prepaid"},
    {"type":"image","image":"asset/google play.png" ,"name":"Google \n Play"},
     {"type":"image","image":"asset/jio.png" ,"name":"Jio Prepaid"},
    {"type":"icon","icon":Icons.phone_android,"name":"Mobile \n Rech..."},
  {"type":"icon","icon":Icons.tv,"name":"DTH/Cable \n TV"},
{"type":"icon","icon":Icons.lightbulb,"name":"Electricity"},
{"type":"icon","icon":Icons.font_download,"name":"Google \n play"},

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      SingleChildScrollView(
        child: Column(
          children: [
           SizedBox(width: double.infinity,
             child: Padding(
               padding: const EdgeInsets.only(top: 50
               ),
               child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    
                       Expanded(
                         child: TextField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search,color: Colors.white,),
                                labelText: "Pay by name or phone number",
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
                              ),
                            ),
                       ),
                     
                      
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage('asset/dp.jpeg'),
                        ),
                      )
                    ],
                  ),
             ),
           ),
            
            SizedBox(height: 200,width:double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("asset/gpa.jpeg",fit: BoxFit.fill,),
              ),
              ),
        
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 70,width: 70,
                          child: Card(
                            child: Icon(Icons.qr_code,color: Colors.white,),
                            color: const Color.fromARGB(193, 9, 52, 133),
                          ),
                        ),
                        Center(child: Text("Scan any \n QR codes",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,)),
                      ],
                    ),
                     Column(
                      children: [
                        SizedBox(width: 70,height: 70,
                          child: Card(
                            child: Icon(Icons.person_add,color: Colors.white,),
                            color: const Color.fromARGB(193, 9, 52, 133),
                          ),
                        ),
                        Center(child: Text("Pay \n anyone",style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                        )),
                      ],
                    ),
                     InkWell(
                      onTap: () {
                        
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>GpayBankTransfer()));
                      },
                       child: Column(
                        children: [
                          SizedBox(height: 70,width: 70,
                            child: Card(
                              child: Icon(Icons.account_balance,color: Colors.white,),
                       
                              color: const Color.fromARGB(193, 9, 52, 133),
                            ),
                          ),
                          Center(child: Text("Bank\nTransfer",style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,)),
                        ],
                                           ),
                     ),
                     InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>GpayMobileRecharge()));
                      },
                       child: Material(
                        color: Colors.transparent,
                         child: Column(
                          children: [
                            SizedBox(height: 70,width: 70,
                              child: Card(
                                child: Icon(Icons.phone_android,color: Colors.white,),
                                color: const Color.fromARGB(193, 9, 52, 133),
                              ),
                            ),
                            Center(child: Text("Mobile \n Reacharge",style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,)),
                          ],
                                             ),
                       ),
                     )
                  ],
                ),
  
              ),
                ///end
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(width: 160,height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(alignment: Alignment.centerLeft,
                              child: DottedBorder(
                                
                                
                                borderType: BorderType.RRect,
                                    radius: const Radius.circular(8),
                                    dashPattern: const [4, 3],
                                    color: const Color.fromARGB(255, 122, 120, 219),
                                    strokeWidth: 1,
                                
                                
                              
                                 
                                     child: Row(
                                      children: [
                                       
                                                         
                                                         
                                     Container(
                                      width: 13,
                                      height: 13,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Color.fromARGB(255, 122, 120, 219), // border color
                                          width: 1,           // border thickness
                                        ),
                                      ),
                                      child: const Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 10,
                                          color: Color.fromARGB(255, 122, 120, 219), // icon color
                                        ),
                                      ),
                                                         ),
                                                 Padding(
                                                   padding: const EdgeInsets.all(8.0),
                                                   child: Text("Activate UPI Lite",style: TextStyle(color: Colors.white,fontSize: 9),),
                                                 ),
                                                         
                                      ],
                                     
                                                       ),
                                   
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 300,height: 50,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                             
                              child: Center(child: Text("UPI ID: aibinkvm@okicici",style: TextStyle(color: Colors.white),)),
                              decoration: BoxDecoration(
                              color: const Color.fromARGB(216, 51, 50, 50),
                              borderRadius: BorderRadius.circular(10)
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Align(alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("People",style: TextStyle(color: Colors.white,fontSize: 19),),
                  )),


                SizedBox(height: 200,width: double.infinity,
                  child: GridView.builder(
                    shrinkWrap: true,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
                       crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 1,),
                      itemCount: items.length,
                       itemBuilder: (BuildContext context, int index){
                        final itemN=items[index];
                       return  Column(
                            children: [
                          if (itemN["type"]=="image")
                           CircleAvatar(
                            radius: 28,
                              backgroundImage: AssetImage(itemN["image"]),
                            )
                         
                          
                          else
                            CircleAvatar(
                              
                              backgroundColor: itemN["color"],
                              radius: 28,
                              child: Text(itemN["text"],style: TextStyle(color: Colors.white,fontSize: 26),),
                            ),
                            Text(itemN["name"],style: TextStyle(color: Colors.white),)
                         
                          
                         
                            ]);
                       
                       }
                       ),
                ),
                SizedBox(height: 20,),
                //end
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Bills & Recharges",style: TextStyle(fontSize: 20,color: Colors.white),)
                  
                           ,
                    Row(
                      children: [
                        Text("Manage",style: TextStyle(color: Colors.blueAccent),),
                         Text(" >",style: TextStyle(color: Colors.blueAccent,fontSize: 22),),
                   
                
                       ],
                    ),
                    ],
                  
                  ),
                ),

           //end

           SizedBox(height: 300,width: double.infinity,
             child: Padding(
               padding: const EdgeInsets.all(8.0),
               child: GridView.builder(
                shrinkWrap:true ,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,
                  crossAxisSpacing: 12,
                    mainAxisSpacing: 12,
                    childAspectRatio: .55,),
               itemCount: itemsN1.length,
                itemBuilder:(context ,index){
                   final itemsN1n=itemsN1[index];
                   return  Column(
                                children: [
                              if (itemsN1n["type"]=="image")
                               CircleAvatar(
                                radius: 28,
                                  backgroundImage: AssetImage(itemsN1n["image"]),
                                )
                             
                              
                              else
                                CircleAvatar(
                                  
                                  backgroundColor: const Color.fromARGB(213, 118, 68, 255),
                                  radius: 28,
                                  child: Icon(itemsN1n["icon"],color: Colors.white,)                            ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(itemsN1n["name"],style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,),
                                ),

                             
                              
                             
                                ]);
                           
               
                }),
             ),
           ),

          Align(alignment: Alignment.centerLeft,
            child: Text("Gift cards & more",style: TextStyle(color: Colors.white,fontSize: 20),)),


          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(height: 180,width: 150,
                  child: Card(
                      color: const Color.fromARGB(216, 51, 50, 50),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(alignment: Alignment.centerLeft,
                              child: Icon(Icons.subscriptions,color: const Color.fromARGB(255, 151, 139, 221),)),
                            Text("Subscriptions",style: TextStyle(color: Colors.white),textAlign: TextAlign.left,),
                            Text("Buy gift cards \n from the biggest \n brands",
                            style: TextStyle(fontSize: 12,color: Colors.white),textAlign: TextAlign.left,),
                          
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             child: Center(
                               child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                  children: [
                                  
                                        CircleAvatar(
                                          radius: 10,
                                         backgroundImage: AssetImage("asset/prime.png"),
                                        ),
                                         Transform.translate(
                                          offset: Offset(-8, 0),
                                           child: CircleAvatar(
                                            radius: 10,
                                           backgroundImage: AssetImage("asset/netflix.jpeg"),
                                                                       ),
                                         ),
                                         Transform.translate(
                                          offset: Offset(-14, 0),
                                           child: CircleAvatar(
                                            radius: 10,
                                           backgroundImage: AssetImage("asset/hotstar.jpeg"),
                                                                       ),
                                         )
                                    
                                              
                                  ],
                                ),
                             ),
                           )
                          ],
                        ),
                      ),
                    
                    ),
                ),
              ),
              
              SizedBox(height: 180,width: 150,
                child: Card(
                      color: const Color.fromARGB(216, 51, 50, 50),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.card_giftcard,color: const Color.fromARGB(255, 151, 139, 221),),
                          Text("Gift cards",style: TextStyle(color: Colors.white),textAlign: TextAlign.left,),
                          Text("Buy gift cards \n from the biggest \n brands",
                          style: TextStyle(color: Colors.white,fontSize: 12),textAlign: TextAlign.left,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                           
                              child:     Center(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CircleAvatar(
                                          radius: 10,
                                         backgroundImage: AssetImage("asset/mntra.jpeg"),
                                        ),
                                         Transform.translate(
                                          offset: Offset(-8, 0),
                                           child: CircleAvatar(
                                            radius: 10,
                                           backgroundImage: AssetImage("asset/ajio.png"),
                                                                         ),
                                         ),
                                         Transform.translate(
                                          offset: Offset(-14, 0),
                                           child: CircleAvatar(
                                            radius: 10,
                                           backgroundImage: AssetImage("asset/flipkart.jpeg"),
                                                                         ),
                                         )
                                      ],
                                    ),
                              )
                                          
                               
                          )
                        ],
                      ),
                    ),
                  
                  
                ),
              )
            ],
          ),
          SizedBox(height: 10,),
          
          Align(alignment: Alignment.centerLeft,
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Offers & rewards"
              ,style: TextStyle(color: Colors.white,fontSize: 20),),
            )),

Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
     
      Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage:AssetImage("asset/reward.jpeg") ,
          ),
          Center(child: Text("Rewards",style: TextStyle(color: Colors.white),))
        ],
      ),
        Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage:AssetImage("asset/offer.jpeg") ,
          ),
          Center(child: Text("Offers",style: TextStyle(color: Colors.white),))
        ],
      ),
     
        Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage:AssetImage("asset/ref.webp") ,
          ),
          Center(child: Text("Refferals",style: TextStyle(color: Colors.white),))
        ],
      ),
         Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage:AssetImage("asset/rupay.jpeg") ,
          ),
          Center(child: Text("RuPay",style: TextStyle(color: Colors.white),))
        ],
      ),
    ],
  ),
),
SizedBox(height: 30,),

       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.timer,color: Colors.white,),
            Text("Check your CIBIL score for \n free ",style: TextStyle(color: Colors.white),textAlign: TextAlign.left,),
            Icon(Icons.arrow_forward,color: Colors.white,)
         
          ],
         ),
       ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.timer,color: Colors.white,),
            Text("See transaction history ",style: TextStyle(color: Colors.white),textAlign: TextAlign.left,),
            Icon(Icons.arrow_forward,color: Colors.white,)
          
          ],
                 ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.account_balance,color: Colors.white,),
            Text("Check bank balance",style: TextStyle(color: Colors.white),),
            Icon(Icons.arrow_forward,color: Colors.white,)
          
          ],
                 ),
        ),

       
          ],
        ),
      )
      
    );
  }
}