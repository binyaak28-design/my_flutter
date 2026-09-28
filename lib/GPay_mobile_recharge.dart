import 'package:flutter/material.dart';

class GpayMobileRecharge extends StatefulWidget {
  const GpayMobileRecharge({super.key});

  @override
  State<GpayMobileRecharge> createState() => _GpayMobileRechargeState();
}

class _GpayMobileRechargeState extends State<GpayMobileRecharge> {
  List<Map<String, dynamic>> itme = [
    {"name": "Vi Prepaid3136", "number": "9012345612", "color": Colors.pink, "letter": "A"},
    {"name": "Nrithi Praveen", "number": "9012345612", "color": const Color.fromARGB(255, 214, 218, 14), "letter": "P"},
    {"name": "Vi Prepaid3136", "number": "9012345612", "color": const Color.fromARGB(255, 103, 16, 124), "letter": "B"},
    {"name": "Amamachan", "number": "9012345612", "color": Colors.green, "letter": "N"},
    {"name": "Vi Prepaid1234", "number": "9012345612", "color": Colors.brown, "letter": "P"},
    {"name": "Vi Prepaid2323", "number": "9012345612", "color": Colors.blue, "letter": "K"},
    {"name": "Vi Prepaid39", "number": "9012345612", "color": Colors.pink, "letter": "S"},
    {"name": "Vi Prepaid3136", "number": "9012345612", "color": Colors.pink, "letter": "A"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        title: const Text("Mobile Recharge", style: TextStyle(color: Colors.white)),
        actions: const [Icon(Icons.more_vert, color: Colors.white)],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("Enter mobile number", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          ),
          Row(
            children: [
              Expanded(
                
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "+91 0000000000",
                      
                      labelStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.phone,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.person, size: 24, color: Color.fromARGB(188, 171, 119, 238)),
            ],
          ),
          const SizedBox(height: 4),
          const Text("Ensure this is a valid number", style: TextStyle(fontSize: 10, color: Colors.white)),

          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("My recharges", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                Text("See more", style: TextStyle(color: Color.fromARGB(234, 128, 154, 241))),
              ],
            ),
          ),

          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: itme.length,
              itemBuilder: (BuildContext context, int index) {
                final itemN = itme[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: itemN["color"],
                    child: Text(itemN["letter"], style: const TextStyle(color: Colors.white)),
                  ),
                  title: Text(itemN["name"], style: const TextStyle(color: Colors.white)),
                  subtitle: Text(itemN["number"], style: const TextStyle(color: Colors.grey)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
