import 'package:domining_layout/app/modules/home/enitity/categories_entity.dart';
import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({
    Key? key,
    required this.categoriesEntity,
  }) : super(key: key);

  final CategoriesEntity categoriesEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(64),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 2,
            color: Colors.black12,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Image.asset(categoriesEntity.image),
    );
  }
}
