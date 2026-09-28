import 'package:flutter/material.dart';

class WhatsappUiCommunitypage extends StatefulWidget {
  const WhatsappUiCommunitypage({super.key});

  @override
  State<WhatsappUiCommunitypage> createState() =>
      _WhatsappUiCommunitypageState();
}

class _WhatsappUiCommunitypageState extends State<WhatsappUiCommunitypage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Communities", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              icon: Icon(Icons.qr_code, color: Colors.white),
              onPressed: () {},
            ),
            PopupMenuButton<String>(
              color: Colors.grey[900],
              onSelected: (value) {},
              icon: Icon(Icons.more_vert, color: Colors.white),
              itemBuilder: (context) {
                return ['Settings'].map((String item) {
                  return PopupMenuItem(
                    value: item,
                    child: Text(item, style: TextStyle(color: Colors.white)),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: Column(
          children: [
            // New Community Row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 125, 125, 126),
                        ),
                        child: Icon(Icons.groups, color: Colors.white, size: 30),
                      ),
                      Positioned(
                        right: -1,
                        bottom: -1,
                        child: Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.green,
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: Center(
                            child: Icon(Icons.add, size: 12, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("New Community",
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),

            Divider(thickness: 5, color: const Color.fromARGB(255, 3, 8, 1)),

            // CEA Community
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 24, 34, 25),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('asset/london.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('CEA Community',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),

            Divider(thickness: 0.4),

            // Announcements Row (Fixed)
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 6.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Icon
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 24, 34, 25),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.campaign, size: 28, color: Colors.white),
                  ),
                  SizedBox(width: 10),

                  // Middle Section (Title + Subtitle)
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title Row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Announcements",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "13/08/2025",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),

                        // Subtitle Row
                        Row(
                          children: [
                            Text(
                              "+91 99469 89524:",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.videocam,
                                size: 16, color: Colors.grey),
                            SizedBox(width: 3),
                            Text(
                              "Video",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                            ),
                            SizedBox(width: 6),
                            Icon(Icons.notifications_off,
                                size: 16, color: Colors.grey.shade500),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // View All
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.arrow_right,
                      color: const Color.fromARGB(134, 255, 255, 255)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "View all",
                    style: TextStyle(
                      color: const Color.fromARGB(134, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),

            Divider(thickness: 5, color: const Color.fromARGB(255, 4, 8, 1)),
          ],
        ),
      ),
    );
  }
}
