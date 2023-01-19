import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProductEnity {
  final String title;
  final String pathImage;
  final String price;

  ProductEnity({
    required this.title,
    required this.pathImage,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'pathImage': pathImage,
      'price': price,
    };
  }

  factory ProductEnity.fromMap(Map<String, dynamic> map) {
    return ProductEnity(
      title: map['title'] as String,
      pathImage: map['pathImage'] as String,
      price: map['price'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductEnity.fromJson(String source) =>
      ProductEnity.fromMap(json.decode(source) as Map<String, dynamic>);
}
