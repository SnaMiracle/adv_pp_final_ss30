import 'package:ecom_ss30/models/product_model.dart';
import 'package:ecom_ss30/services/product_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;
  var carItems = <ProductModel>[].obs;

  // Add product to the cart
  void addToCart(ProductModel product) {
    carItems.add(product);  // No need to call update() here
  }

  // Getter for cart count
  int get cartCount => carItems.length;

  @override
  void onInit() {
    super.onInit();
    getProducts();
  }

  // Fetch products from API
  void getProducts() async {
    try {
      isLoading(true);
      var result = await ProductService.fetchProduct();
      productList.assignAll(result);
    } catch (e) {
      // Handle error
      print("Error fetching products: $e");
    } finally {
      isLoading(false);
    }
  }
}