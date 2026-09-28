import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class GpayBankTransfer extends StatefulWidget {
  const GpayBankTransfer({super.key});

  @override
  State<GpayBankTransfer> createState() => _GpayBankTransferState();
}

class _GpayBankTransferState extends State<GpayBankTransfer> {
 
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.arrow_back),
          title: Text("Bank Transfer",style: TextStyle(color: Colors.white),),
          actions: [Icon(Icons.more_vert)],
          bottom: TabBar(
              indicatorColor: Colors.white, // underline color
              labelColor: Colors.white,     // active tab text color
              unselectedLabelColor: Colors.white70,
            tabs: [
            Tab(text: "To Others",),
            Tab(text: "To self",),
          ]),
        ),

        body: TabBarView(children: [
     firstTab(),
      Column(
        children: [
          SizedBox(height: 30,),
          Align(alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Self transfer",style: TextStyle(color: Colors.white,fontSize: 15),textAlign: TextAlign.left,),
            )),
             SizedBox(height: 30,),
          Align(alignment: Alignment.centerLeft
          , child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("MAnage your mone better by adding another \n account to make self transfer",style: TextStyle(color: Colors.white,fontSize: 10),textAlign: TextAlign.left,),
          )),
           SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(height: 70,width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("asset/sbi ogo.png",fit: BoxFit.fill),
                  )),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("State Bank of India \n ....1234",style: TextStyle(color: Colors.white,fontSize: 14),),
                      ),
                  
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text("Savings Account",style: TextStyle(color: Colors.white,fontSize: 10),),
                   )
                    ],
                  ),
                  
              ],
            ),

          ),
           SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(height: 70,width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DottedBorder(
                              
                                      borderType: BorderType.RRect,
                                          radius: const Radius.circular(0),
                                          dashPattern: const [4, 3],
                                          color: const Color.fromARGB(255, 122, 120, 219),
                                          strokeWidth: 1,
                                      
                                      
                      child:Center(child: Icon(Icons.account_balance,color: Colors.white,size: 30,)) ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Add bank account",style: TextStyle(color: const Color.fromARGB(255, 122, 120, 219),),),
                )
              ],
            ),
          )
        ],

      )]
      ),
      ),
    );
  }
}
class firstTab extends StatelessWidget {
  const firstTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(height: 20,),
        const Align(alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Receiver's bank details",style: TextStyle(color: Colors.white,fontSize: 14),),
          )),
         const Padding(
           padding: EdgeInsets.all(8.0),
           child: TextField(
            decoration: InputDecoration(
              labelText: "Bank account number",
              border: OutlineInputBorder(borderRadius: BorderRadius.only(),)
            ),
           ),
         ),
          SizedBox(height: 20,),
             const Padding(
           padding: EdgeInsets.all(8.0),
           child: TextField(
            decoration: InputDecoration(
              labelText: "IFSC code",
              border: OutlineInputBorder(borderRadius: BorderRadius.only(),)
            ),
           ),
         ),
          SizedBox(height: 20,),
         SizedBox(width: 300,
           child: ElevatedButton(onPressed:(){
           
           },style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 70, 70, 70)
           ),
                   
            child:
           const Text("Continue",style: TextStyle(color: Color.fromARGB(255, 141, 149, 153)),)),
         ),
          SizedBox(height: 20,),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Text("This information will be securel saved as per \n Google Pay Terms of Service and Privacy Policy",
  style: TextStyle(fontSize: 12,color: const Color.fromARGB(207, 255, 255, 255)),),
),
 SizedBox(height: 20,),
Align(alignment: Alignment.centerLeft
, child: Padding(
  padding: const EdgeInsets.all(8.0),
  child: Text("Recent transfers",style: TextStyle(color: Colors.white,fontSize: 20),),
)),
 SizedBox(height: 20,),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(height: 70.3,width: 70.3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DottedBorder(
                              
                                    borderType: BorderType.RRect,
  radius: Radius.circular(20),
  dashPattern: [6, 3],
  color: const Color.fromARGB(255, 118, 119, 119), // dotted line color
  strokeWidth: 2,
                                      
                                      
                      child:Center(child: Container(height: 70,width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                         color: const Color.fromARGB(255, 68, 66, 66),
                      ),
                     
                        child: Icon(Icons.account_balance,color: const Color.fromARGB(216, 146, 131, 235),size: 30,))) ),
                  ),
                ),
               
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Recent bank transfers will show up \n here for you to easily repeat them",
                  style: TextStyle(color: Colors.white,fontSize: 13),textAlign: TextAlign.left,),
                )
    ],
  ),
)

      ],
    );
  }
}