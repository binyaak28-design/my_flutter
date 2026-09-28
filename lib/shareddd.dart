import 'package:flutter/material.dart';

class sarrr extends StatefulWidget {
   final Map<String, dynamic> item; 
  const sarrr({super.key ,required this.item});

  @override
  State<sarrr> createState() => _sarrrState();
}

class _sarrrState extends State<sarrr> {
  @override
  Widget build(BuildContext context) {
    
      

     
  var item = widget.item; // use passed item

  return Scaffold(
    extendBodyBehindAppBar: true,
    backgroundColor: Colors.red,
    appBar: AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      backgroundColor: Colors.transparent,
      title: const Text("Food Details", style: TextStyle(color: Colors.white)),
    ),
    body: Column(
      children: [
        Flexible(
          flex: 3,
          child: Center(
            child: CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(item["image"]),
            ),
          ),
        ),
        Flexible(
          flex: 7,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item["name"],
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    Text(item["Rating"]),
                    const SizedBox(width: 20),
                    const Icon(Icons.scale, color: Colors.red),
                    Text(item["Weight"]),
                  ],
                ),
                const SizedBox(height: 15),
                Text("₹${item["price"]}",
                    style: const TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}

    
  }
