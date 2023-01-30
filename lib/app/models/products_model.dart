import 'dart:convert';

class ProductsModel {
  ProductsModel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  factory ProductsModel.fromMap(Map<String, dynamic> map) {
    return ProductsModel(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      price: map['price'] as double,
      image: map['image'] as String,
    );
  }

  factory ProductsModel.fromJson(String source) =>
      ProductsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  final int id;
  final String name;
  final String description;
  final double price;
  final String image;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'image': image,
    };
  }

  String toJson() => json.encode(toMap());
}
