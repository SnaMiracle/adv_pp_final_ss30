
class ProductModel {
  String? productId;
  String? productName;
  String? description;
  double? price;
  int? qty;
  String? imageUrl;
  //List<String>? imageUrl;

  ProductModel(
      {this.productId,
      this.productName,
      this.description,
      this.price,
      this.qty,
      this.imageUrl
      //this.imageUrl
      });

  ProductModel.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    productName = json['product_name'];
    description = json['description'];
    price = json['price'] is String
      ? double.tryParse(json['price']) // Convert to double if it's a String
      : json['price']?.toDouble();
    qty = json['qty'];
    //imageUrl = json['images'][0]["image"];
    // imageUrl = (json['images'] as List<dynamic>?)
    //     ?.map((image) => image['image'] as String)
    //     .toList();
    imageUrl = (json['images'] != null && json['images'].isNotEmpty)
        ? json['images'][0]["image"] as String
        : null;

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['product_name'] = this.productName;
    data['description'] = this.description;
    data['price'] = this.price;
    data['qty'] = this.qty;
    data['images'] = this.imageUrl;
    return data;
  }
}