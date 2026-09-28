import 'package:flutter/material.dart';
import 'package:flutter_application_1/Api_Moc_UserModelClass.dart';

class ApiMocDisplay extends StatelessWidget {
  final Moc_User_Api product;

  const ApiMocDisplay({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: const Text(
          "Product Details",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: SizedBox(
            width: 700,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Product image
                /*  if (product.images != null && product.images!.isNotEmpty)
                      Center(
                        child: Image.network(
                          product.images![0],
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),*/

                    const SizedBox(height: 16),

                    // Product title
                    Text(
                      product.title ?? "No Title",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    // Price
                    Text(
                      "Price: \$${product.price ?? 0}",
                      style: const TextStyle(fontSize: 18),
                    ),

                    const SizedBox(height: 8),

                    // Description
                    Text(
                      product.description ?? "No Description",
                      style: const TextStyle(fontSize: 16),
                    ),

                    const SizedBox(height: 8),

                    // Category name
                    Text(
                      "Category: ${product.category?.name ?? 'No Category'}",
                      style: const TextStyle(fontSize: 18),
                    ),

                    const SizedBox(height: 8),

                    // Category image (if any)
                    if (product.category?.image != null)
                      Image.network(
                        product.category!.image!,
                        height: 100,
                        fit: BoxFit.cover,
                      ),

                    const SizedBox(height: 8),

                    // Creation date
                    Text(
                      "Created At: ${product.creationAt ?? 'N/A'}",
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
