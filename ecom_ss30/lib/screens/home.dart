import 'package:ecom_ss30/screens/productCardForGrid.dart';
import 'package:ecom_ss30/utils/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ecom_ss30/controllers/product_controller.dart'; // Assuming the product card file is named this way.

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("All Products"),
        automaticallyImplyLeading: false,
      ),
      body: Obx(() {
        if (productController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        } else if (productController.productList.isEmpty) {
          return const Center(child: Text("No Products Available"));
        } else {
          return GridView.builder(
            padding: const EdgeInsets.all(8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of items in a row
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 0.7, // Adjust to make the cards proportional
            ),
            itemCount: productController.productList.length,
            itemBuilder: (context, index) {
              final product = productController.productList[index];
              return ProductCardForGird(
                product: product, // Use your dynamic product model
              );
            },
          );
        }
      }),
    );
  }
}
