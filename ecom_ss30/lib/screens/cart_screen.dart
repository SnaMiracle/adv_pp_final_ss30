import 'package:ecom_ss30/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final ProductController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Cart'),
      ),
      body: Obx((){
        return ListView.builder(
          itemCount: cartController.carItems.length,
          itemBuilder: (context, index) {
            final product = cartController.carItems[index];
            return ListTile(
              leading: product.imageUrl != null 
          ? Image.network(
              product.imageUrl!,
              width: 100,
              height: 100,
            )
                : const Placeholder(fallbackWidth: 100, fallbackHeight: 100), // fallback if no image
                title: Text(product.productName ?? ''),
                subtitle: Text('\$${product.price?.toStringAsFixed(2) ?? 'N/A'}'),
            );
          },
        );
      }),
    );
  }
}