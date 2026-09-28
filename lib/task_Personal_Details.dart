import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/task_presonalDetails_DispalyScreen.dart';
import 'package:open_file/open_file.dart';

class TaskPersonalDetails extends StatefulWidget {
  const TaskPersonalDetails({super.key});

  @override
  State<TaskPersonalDetails> createState() => _TaskPersonalDetailsState();
}

class _TaskPersonalDetailsState extends State<TaskPersonalDetails> {

 // Controllers
TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final emailController = TextEditingController();
  final contactController = TextEditingController();
  final addressController = TextEditingController();

  // Focus Nodes
 /* final nameFocus = FocusNode();
  final passwordFocus = FocusNode();
  final emailFocus = FocusNode();
  final contactFocus = FocusNode();
  final addressFocus = FocusNode();*/
bool playingChess=false;
 bool  readingBooks=false;
  String? st;
  String? str;

   String dropdownvalue='--Select Group--';
   String dropdownvalue2='--Select Group--';

List <String> degreeitems=[
    '--Select Group--',
    'Btech Electronics & Communication',
    'Btech Civil',
    'Bsc Maths',
    'Bsc Chemistry',
    'Bsc Physics',
  ];
  
List <String> enggitems=[
    '--select Group--',
    'Settings',
    'Account',
    'Go Premium'
  ];
  ///File Picker ==>
  String? path;
  String? names;
  void pickFile(BuildContext context)async{
    FilePickerResult? result=await FilePicker.platform.pickFiles();
    if (result!=null && result.files.single.path != null) {
      setState(() {
        
        path=result.files.single.path;
        names=result.files.single.name;
      });
      
    }else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('No file selected')));
    }

  }
    void showFile(BuildContext context){
if(path !=null){
OpenFile.open(path!);
}
else{
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('No file selected')));
}
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: 
      SingleChildScrollView(
        child: Container(height:2000,width:700,
        color: const Color.fromARGB(255, 159, 247, 87),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text("Personal Details",style: TextStyle(color: Colors.red,fontSize: 15),),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                     Text("Name:  "),
                      SizedBox(height: 20,width: 200,
                               //     child: Expanded(
                          child: TextField(
                             controller: nameController,
                         
                              
                           decoration:InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:BorderRadius.only()
                            ),
                             // labelText:
                             filled: true,
                             fillColor: Colors.white
                            ),
                            ),
                             
                      )
                      ],
                    ),
                  ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                                   Text("Password:  "),
                      SizedBox(height: 20,width: 200,
                      
                          child: TextField(
                             controller: passwordController,
                             
                             /*   focusNode: passwordFocus,
                                obscureText: true,
                                textInputAction: TextInputAction.next,
                                onSubmitted: (_) =>
                                    FocusScope.of(context).requestFocus(emailFocus),*/
                           decoration:InputDecoration(
                            
                             // labelText:
                             filled: true,
                             fillColor: Colors.white,
                             border: OutlineInputBorder(
                              borderRadius:BorderRadius.only())
                            
                          ),
                        ),
                      )
                      ],
                                  ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text("Email id:  "),
                    SizedBox(height: 20,width: 200,
                     
                        child: TextField(
                           controller: emailController,
                   
                         decoration:InputDecoration(
                           // labelText:
                           filled: true,
                           fillColor: Colors.white,
                             border: OutlineInputBorder(
                            borderRadius:BorderRadius.only())
                          ),
                        ),
                      
                    )
                    ],
                  ),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Gender: "),
                  Text("Male"),
                 Radio(
                      
              value: "male", 
                      groupValue: st,
                      onChanged: (value) {
              setState(() {
                st=value!;
              });
              
                      },),
              
                Text("Female"),
               
                      
                      Radio( 
              value: "Female", 
                 groupValue: st,
                 onChanged: (value) {
              setState(() {
                st=value!;
              });
              
                 },),
                 
              ],
                      ),
                      
                  
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                 Text("Contact:  "),
                    SizedBox(height: 20,width: 200,
                    
                        child: TextField(
                             controller: contactController,
                      
                         decoration:InputDecoration(
                           // labelText:
                           filled: true,
                           fillColor: Colors.white,
                             border: OutlineInputBorder(
                            borderRadius:BorderRadius.only())
                         
                        ),
                      ),
                    ),
                     ],
                  ),
                    Text("Personal Details",style: TextStyle(color: Colors.red,fontSize: 15),),
                      
                       Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                 Text("Degree:  "),
                 
                   
                  
                   
                    SizedBox(height:30,width:300,
                       
                child: Container(
                 
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(),
                  border: Border.all(color: Colors.black,width: .3),
                      
                   color: Colors.white,
                  ),
                  child: DropdownButton(
                    dropdownColor:Colors.white ,
                     underline: SizedBox(), //to remove underline
                    
                    isExpanded: true,
                    
                  //  focusColor: const Color.fromARGB(255, 245, 245, 245),
                  
                    value:dropdownvalue,
                    icon: Icon(Icons.arrow_drop_down),
                    
                      items: degreeitems.map((String variabl){
                      return DropdownMenuItem(
                        value: variabl,
                        child: Text(variabl));  
                  
                      }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        
                        dropdownvalue=value!;
                      });
                    },
                      
                     ),
                ),
              
                      ),
                      
                       ],
                  ),
                /*   Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                 Text("Engineering:  "),
                 
                   
                  
                   
                    SizedBox(height:30,width:300,
                       
                child: Container(
                 
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(),
                  border: Border.all(color: Colors.black,width: .3),
                      
                   color: Colors.white,
                  ),
                  child: DropdownButton(
                    dropdownColor:Colors.white ,
                     underline: SizedBox(), //to remove underline
                    
                    isExpanded: true,
                    
                  //  focusColor: const Color.fromARGB(255, 245, 245, 245),
                  
                    value:dropdownvalue2,
                    icon: Icon(Icons.arrow_drop_down),
                    
                      items: enggitems.map((String variable1){
                      return DropdownMenuItem(
                        value: variable1,
                        child: Text(variable1));  
                  
                      }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        
                        dropdownvalue2=value!;
                      });
                    },
                      
                     ),
                ),
              
                      ),
                      
                       ],
                  ),*/
                      
                      
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text("Hobbies:  "),
                    Expanded(
                      child: CheckboxListTile(title: Text("Playing Chess"),
                                  value: playingChess, 
                                onChanged:(value){
                                  setState(() {
                      playingChess=value!;
                                  });
                                }),
                    ),
                Expanded(
                  child: CheckboxListTile(title: Text("Reading Books"),
                    value: readingBooks,
                     onChanged: (value){
                      setState(() {
                        
                        readingBooks=value!;
                      });
                     }),
                ),
                 
                   
                  
                
                       ],
                  ),
                       
                      Text("Address",style: TextStyle(color: Colors.red),),
                     
                       Padding(
                         padding: const EdgeInsets.only(left: 80,right: 80),
                         child: TextField(
                            maxLines: 5,
                            keyboardType: TextInputType.multiline,
                            decoration:InputDecoration(
                             // labelText:
                             filled: true,
                             fillColor: Colors.white,
                               border: OutlineInputBorder(
                              borderRadius:BorderRadius.only())
                            ),
                                       
                                         ),
                       ),
                 //      SizedBox(height: 10,),
                 
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text("Attach Resume "),
                      
                   SizedBox(height: 20,width: 150,
                        child: ElevatedButton(onPressed: (){
                          pickFile(context);
                        
                        }, child: Text("Choose File")),
                      
                      ),
                        SizedBox(height: 20,width: 150,
                        child: ElevatedButton(onPressed: (){
                         showFile(context);
                        
                        }, child: Text("open File")),
                      
                      ),
                      
                   Text(" No file chosen"),
                    ],
                  ),
                //  SizedBox(height: 5,),
                  ElevatedButton(onPressed: (){
                     List<String> hobbiesSelected = [];
                      if (playingChess) hobbiesSelected.add("Playing Chess");
                      if (readingBooks) hobbiesSelected.add("Reading Books");
                      
                    Navigator.push(context,
                     MaterialPageRoute(builder: (context)=>PersonalDetailsDisplayScreen(nameS: nameController.text,
                     passwordS: passwordController.text,
                     contactS: contactController.text,genderS: st,
                     degreeS: dropdownvalue,
                     hobbies: hobbiesSelected,
                    )));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 243, 100, 119),
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
                    
                  ), child: Text("Submit",style: TextStyle(color: Colors.white),),
                  ),
                  Container(
                    height: 600,width: 400,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}