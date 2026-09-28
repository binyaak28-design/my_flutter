import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Api_Moc2_GET_ModalClass.dart';

class ApiMoc2Get extends StatefulWidget {
  const ApiMoc2Get({super.key});

  @override
  State<ApiMoc2Get> createState() => _ApiMoc2GetState();
}

class _ApiMoc2GetState extends State<ApiMoc2Get> {
  List<ApiMoc2GetModalClass> users = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchFun();
  }

  Future<void> fetchFun() async {
    try {
      // 🔹 Step 1: Call API
      var response = await Dio().get("https://www.simplifiedcoding.net/demos/marvel/");

      print("🔹 Status Code: ${response.statusCode}");
      print("🔹 Response Type: ${response.data.runtimeType}");
      print("🔹 Response Data: ${response.data}");

      // 🔹 Step 2: Check if data is List or Map
      if (response.statusCode == 200) {
        final data = response.data;

        if (data is List) {
          print("✅ It’s a List with ${data.length} items");
          setState(() {
            users = data.map((item) => ApiMoc2GetModalClass.fromJson(item)).toList();
            isLoading = false;
          });
        } else if (data is Map && data["data"] != null) {
          print("✅ It’s a Map with data key: ${data["data"].length} items");
          setState(() {
            users = (data["data"] as List)
                .map((item) => ApiMoc2GetModalClass.fromJson(item))
                .toList();
            isLoading = false;
          });
        } else {
          print("⚠️ Unexpected data format: $data");
          setState(() => isLoading = false);
        }
      } else {
        print("❌ API returned status code ${response.statusCode}");
        setState(() => isLoading = false);
      }
    } catch (e) {
      print("❌ Error fetching data: $e");
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Machine Test 2 API GET",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : users.isEmpty
              ? const Center(
                  child: Text(
                    "No data found",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                )
              : ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    final user = users[index];
                    return Card(
                      margin: const EdgeInsets.all(8),
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user.name ?? "",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text("Real Name: ${user.realname ?? "N/A"}"),
                            Text("Team: ${user.team ?? "N/A"}"),
                            Text("First Appearance: ${user.firstappearance ?? "N/A"}"),
                            Text("Created By: ${user.createdby ?? "N/A"}"),
                            Text("Publisher: ${user.publisher ?? "N/A"}"),
                            const SizedBox(height: 10),
                            if (user.imageurl != null && user.imageurl!.isNotEmpty)
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  user.imageurl!,
                                  height: 200,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      const Icon(Icons.broken_image, size: 50),
                                ),
                              ),
                            const SizedBox(height: 10),
                            Text(
                              user.bio ?? "",
                              style: const TextStyle(color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}
