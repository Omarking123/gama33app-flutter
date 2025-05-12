// lib/models/product.dart

class Product {
  final int id;
  final String productName;
  final double price;
  final String details;
  final String imageUrl;
  final String category;

  Product({
    required this.id,
    required this.productName,
    required this.price,
    required this.details,
    required this.imageUrl,
    required this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as int,
      productName: json['productName'] as String,
      price: (json['price'] as num).toDouble(),
      details: json['details'] as String,
      imageUrl: json['imageUrl'] as String,
      category: json['category'] as String,
    );
  }
}
