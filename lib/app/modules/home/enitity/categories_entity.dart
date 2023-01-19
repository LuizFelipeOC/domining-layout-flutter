// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CategoriesEntity {
  final String name;
  final String route;
  final String image;

  CategoriesEntity({
    required this.name,
    required this.route,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'route': route,
      'image': image,
    };
  }

  factory CategoriesEntity.fromMap(Map<String, dynamic> map) {
    return CategoriesEntity(
      name: map['name'] as String,
      route: map['route'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoriesEntity.fromJson(String source) =>
      CategoriesEntity.fromMap(json.decode(source) as Map<String, dynamic>);
}
