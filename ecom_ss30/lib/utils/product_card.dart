import 'package:ecom_ss30/controllers/product_controller.dart';
import 'package:ecom_ss30/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  ProductCard({super.key, required this.product});

  final ProductController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            if (product.imageUrl != null) // Check if imageUrl is not null
          Image.network(
            product.imageUrl!, // Use the dynamic image URL
            width: 100,
            height: 100,
          )
        else
          const Placeholder( // Fallback if no image
            fallbackWidth: 100,
            fallbackHeight: 100,
          ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.productName.toString(),
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text('\$${product.price.toString()}',
                        style: const TextStyle(fontSize: 16, color: Colors.green)),
                  ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                cartController.addToCart(product); // Adds to cart
              },
              child: const Text('Add to Cart'),
            )
          ],
        ),
      ),
    );
  }
}