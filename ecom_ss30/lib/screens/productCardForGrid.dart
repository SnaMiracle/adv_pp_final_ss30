import 'package:ecom_ss30/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCardForGird extends StatelessWidget {
  final ProductModel product;

  ProductCardForGird({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (product.imageUrl != null)
              Image.network(
                product.imageUrl!,
                width: 100,
                height: 100,
              )
            else
              const Placeholder(fallbackWidth: 100, fallbackHeight: 100),
            const SizedBox(height: 50.0),
            Text(
              product.productName ?? 'No Name',
              style: const TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            Align(alignment: Alignment.centerLeft,
                child: Text('\$${product.price ?? 0.0}', style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w900, color: Colors.green))),

          ],
        ),
      ),
    );
  }
}
