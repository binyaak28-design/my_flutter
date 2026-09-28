import 'package:flutter/material.dart';

class Shaaaaa extends StatefulWidget {
  final String categoryName;

  const Shaaaaa({super.key, required this.categoryName});

  @override
  State<Shaaaaa> createState() =>
      _SharedpreferencePizzaSc2TaskState();
}

class _SharedpreferencePizzaSc2TaskState
    extends State<Shaaaaa> {
  // Items for each category
  final Map<String, List<Map<String, String>>> items = {
    "Pizza": [
      {
        "name": "Margherita",
        "rating": "4/5",
        "weight": "200 g",
        "price": "200 Rs",
        "image": "asset/pizza bruscetta.jpg"
      },
      {
        "name": "Double Cheese Margherita",
        "rating": "5/5",
        "weight": "300 g",
        "price": "500 Rs",
        "image": "asset/pepperoni pizza.jpg"
      },
    ],
    "Salad": [
      {
        "name": "Greek Salad",
        "rating": "3/5",
        "weight": "100 g",
        "price": "150 Rs",
        "image": "asset/salad.jpg"
      }
    ],
    "Dessert": [
      {
        "name": "Chocolate Cake",
        "rating": "5/5",
        "weight": "250 g",
        "price": "300 Rs",
        "image": "asset/dessert.jpeg"
      }
    ],
    "Pasta": [
      {
        "name": "Spaghetti",
        "rating": "4/5",
        "weight": "200 g",
        "price": "250 Rs",
        "image": "asset/pasta.jpeg"
      }
    ],
    "Beverage": [
      {
        "name": "Cold Coffee",
        "rating": "4/5",
        "weight": "200 ml",
        "price": "100 Rs",
        "image": "asset/beverage.jpeg"
      }
    ],
  };

  @override
  Widget build(BuildContext context) {
    var categoryItems = items[widget.categoryName] ?? [];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: categoryItems.length,
        itemBuilder: (context, index) {
var item = categoryItems[index];          
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(item["image"]!),
                radius: 25,
              ),
              title: Text(item["name"]!,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    const SizedBox(width: 4),
                    Text(item["rating"]!),
                  ]),
                  Text(item["weight"]!),
                ],
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(item["price"]!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red)),
                  IconButton(
                    icon: const Icon(Icons.shopping_cart, color: Colors.green),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
