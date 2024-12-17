import 'package:ecom_ss30/controllers/product_controller.dart';
import 'package:ecom_ss30/utils/product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductList extends StatelessWidget {
  ProductList({super.key});
  final ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product List"),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: (){
              Get.toNamed("/cart");
            },
          ),
          Obx(
            () => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('${controller.cartCount}'),
            ),
          ),
        ],
      ),
      body: Obx(
        (){
        if(controller.isLoading.value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (controller.productList.isEmpty) {
          return const  Center(
            child: Text("No Record"),
          );
        } else {
          return Center(
            child: ListView.builder(
              itemCount: controller.productList.length,
              itemBuilder: (context, index){
                return ProductCard(product: controller.productList[index]);
                }
              ),
            );
          }       
        },
      ),
    );
  }
}

//       ),
//     );
//   }
// }

// else {
        //   return ListView.builder(
        //     itemCount: controller.productList.length,
        //     itemBuilder: (context,index){
        //       return ListTile(
        //         title: Text(
        //           controller.productList[index].productName.toString(),
        //           ),
        //           subtitle: Text(controller.productList[index].price.toString()),
        //         );