import 'package:flutter/material.dart';
import 'package:flutter_application_1/sharedPreference_Pizza_SC3_Task.dart';
import 'package:flutter_application_1/shareddd.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedpreferencePizzaSc2Task extends StatefulWidget {
    final String categoryName;

  const SharedpreferencePizzaSc2Task({super.key,required this.categoryName});
  

  @override
  State<SharedpreferencePizzaSc2Task> createState() => _SharedpreferencePizzaSc2TaskState();
}

class _SharedpreferencePizzaSc2TaskState extends State<SharedpreferencePizzaSc2Task> {
    // Items for each category
  final Map<String, List<Map<String, String>>> items = {
    "Pizza": [
  {
     "name": 'Margherita',
     "Rating":'4/5', 
     "Weight":'200g',
     "price":'200 Rs',
     "image":'asset/pepperoni pizza.jpg',
     "calory":"100 kcal",
     "prep":"30 min",
     "about":"A classic Neapolitan pizza topped with a simple, fresh combination of ",
    
  },
  {
     "name": 'Double Cheese Margherita',
     "Rating":'5/5',
     "Weight": '300g',
     "price":'300 Rs',
     "image": 'asset/pizza bruscetta.jpg',
     "calory":"160 kcal",
     "prep":"10 min",
     "about":"A double cheese Margherita pizza is a popular variant of the classic Margherita, featuring the original tomato, ",
     },
     {
 "name":  'Detroit',
     "Rating":'2/5',
     "Weight": '400g',
     "price":'600 Rs',
     "image": 'asset/chicken tikka masala pizza.jpg',
       "calory":"120 kcal",
     "prep":"35 min",
     "about":"A Detroit pizza is a popular variant of the classic Margherita"
     },

     {
 "name":  'Sicilian',
     "Rating":'2.5/5',
     "Weight": '450g',
     "price":'650 Rs',
     "image": 'asset/classic pepperoni.jpg',
      "calory":"240 kcal",
     "prep":"20 min",
     "about":"A Salicilin is a popular variant of the classic Margherita"
     },
     {
     "name":  'Quattro Formaggi',
     "Rating":'4.5/5',
     "Weight": '250g',
     "price":'350 Rs',
     "image": 'asset/classic pepperoni.jpg',
     "calory":"240 kcal",
     "prep":"20 min",
     "about":"A Salicilin is a popular variant of the classic Margherita"
     },

     {
    "name":   'Capricciosa',
     "Rating":'3.5/5',
     "Weight": '250g',
     "price":'350 Rs',
     "image":  'asset/pepperoni pizza.jpg',
     "calory":"240 kcal",
     "prep":"20 min",
     "about":"A Salicilin is a popular variant of the classic Margherita"
     },

      
     
      
      
     
     ],
    
     "Salad" :[
      {
    "name":  'Greek Salad',
     "Rating":'4.5/5',
     "Weight": '250g',
     "price":'350 Rs',
     "image":    'asset/sal1.jpeg',
     "calory":"240 kcal",
     "prep":"20 min",
     "about":"A salad is a dish, traditionally a cold serving, that combines raw or cooked vegetables, greens, and other"
     },
      {
    "name":      'Pasta Salad',
     "Rating":'4.5/5',
     "Weight": '200g',
     "price":'350 Rs',
     "image":  'asset/sal2.jpeg',
     "calory":"340 kcal",
     "prep":"20 min",
     "about":"A salad is a dish, traditionally a cold serving, that combines raw or cooked vegetables, greens, and other"
     },
      {
    "name":   'Fruit Salad',
     "Rating":'3.5/5',
     "Weight": '250g',
     "price":'350 Rs',
     "image": 'asset/sal3.jpeg',
      "calory":"340 kcal",
     "prep":"10 min",
     "about":"A Fruit Salad is a dish, traditionally a cold serving, that combines raw or cooked vegetables, greens, and other"
     
     },
      {
    "name":   'Caprese Salad',
     "Rating":'3.5/5',
     "Weight": '250g',
     "price":'350 Rs',
     "image":  'asset/sal4.jpeg',
      "calory":"240 kcal",
     "prep":"20 min",
     "about":"A Caprese Salad traditionally a cold serving, that combines raw or cooked vegetables, greens, and other"
     },
      {
    "name":    'Cobb Salad',
     "Rating":'3.5/5',
     "Weight": '250g',
     "price":'350 Rs',
     "image":  'asset/sal5.jpeg',
     "calory":"100 kcal",
     "prep":"40 min",
     "about":"A Cobb Salad traditionally a cold serving, that combines raw or cooked vegetables, greens, and other"
     },
      {
    "name":   'Chicken Salad',
     "Rating":'3.5/5',
     "Weight": '250g',
     "price":'350 Rs',
     "image": 'asset/sal6.jpeg',
     "calory":"240 kcal",
     "prep":"20 min",
     "about":"A Caprese Salad traditionally a cold serving, that combines raw or cooked vegetables, greens, and other"
     },
      
     ],

    "Dessert" :[] 
  };
       
       
    
     
/*     var dessertName=[
      'Apple pie',
      'Cake',
      'Cookies',
      'Cheese Cake',
      "Pudding",
      "Brownie"
     ]
     ;
      var dessertRating=[
      '3/5',
      '4/5',
      "3/5",
      '3.5/5',
      '4.2/5',
      '3.9/5'
     ];
     var dessertWt=[
      '100g',
      '400g',
      '450g',
      '200g',
      '300g',
      '200g'
     ];
     var dessertPrice=[
      '400 Rs',
      '500 Rs',
      '600 Rs',
      '200 Rs',
      '500 Rs',
      '600 Rs'

     ];
     var desserImage=[
      'asset/des2.jpeg',
'asset/des3.jpeg',
'asset/des4.jpeg',
'asset/des5.jpeg',
'asset/des6.jpeg',
'asset/des1.jpeg'
     ];*/
    
//String selectedCategory = "Pizza";


  @override
  Widget build(BuildContext context) {
      var categoryItems = items[widget.categoryName] ?? [];
    return Scaffold(
      extendBodyBehindAppBar: true,
       appBar: AppBar(
       //  title: Text(widget.categoryName),
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu,color: Colors.white,),
        actions: [
          Icon(Icons.shopping_bag,color: Colors.red,)
        ],
      ),
      body: 
     
         Stack(
          children: [
            Row(
              children: [
                Flexible(flex: 4,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Flexible(flex: 6,
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60,left: 40),
              child: Text(widget.categoryName,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Center(
              child: ListView.builder(
                      
                  itemCount: categoryItems.length,
                itemBuilder: (BuildContext context,int index){
                  var item = categoryItems[index];   
                  return Center(
                    child: SizedBox(height: 300,width: 300,
                      child: Stack(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context,
                               MaterialPageRoute(builder: (context)=>SharedpreferencePizzaSc3Task(item: item)));
                                    
                            },
                            child: SizedBox(height: 300,width: 300,
                              child: Center(
                                child: Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Center(
                                      child: Column(
                                        children: [
                                         Text(item["name"]!),



                                         Padding(
                                           padding: const EdgeInsets.only(top: 30,left: 20),
                                           child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                           
                                            Center(
                                              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Center(child: Icon(Icons.star,color: Colors.amber,)),
                                                  ),
                                                  Center(child: Text(item["Rating"]!)),
                                                  
                                                ],
                                              ),
                                            ),
                                                                                   Padding(
                                            padding: const EdgeInsets.only(left: 20),
                                            child: Text(item["Weight"]!),
                                                                                   ),
                                             
                                            ],
                                           ),
                                         ),
                                         Row(
                                          children: [
                                            Spacer(),
                                           Padding(
                                           padding: const EdgeInsets.all(8.0),
                                           child: Text(item["price"]!,style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
                                         ),
                                          ],
                                         ),
                                     
                                        
                                          SizedBox(width: 200,height: 80,
                                            child: Center(
                                             
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 40),
                                                  child: Card(
                                                    color: Colors.red,
                                                    child: 
                                                    Center(
                                                      child:  Text("-  1  +",style: TextStyle(fontSize: 18)),
                                                      
                                                   
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                        
                                        ],
                                      ),
                                    ),
                                  )
                                  
                                
                                
                                ),
                              ),
                            ),
                          )
                           
                        
                       ,SizedBox(width: 320,
                       
                           child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(item["image"]!),
                              ),
                           
                                 SizedBox(width: 250,
                                   child: FloatingActionButton(onPressed: (){
                                            
                                                                   },
                                                                   shape: CircleBorder(),
                                                                  mini: true,
                                                                   backgroundColor: Colors.green,
                                                                   child: Icon(Icons.shopping_bag,color: Colors.white,),),
                                 ),
                              
                                        
                            ],
                           ),
                         
                       )             ],
                      ),
                    ),
                  );
              
              
              }),
            )
            
            
            
            ])

    );
  }
}