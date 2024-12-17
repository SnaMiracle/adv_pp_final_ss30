import 'package:ecom_ss30/models/product_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductService {
  static Future<List<ProductModel>> fetchProduct() async{
    String baseUrl = "http://127.0.0.1:8000/api/products/";
    //try{
      var response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200){
        List data = json.decode(response.body);
        return data.map((p) => ProductModel.fromJson(p)).toList();
      } else {
        throw Exception();
      }
    // }finally {
    //   throw Exception();
    // }
  }
}

