import 'package:domining_layout/app/modules/details/details_page.dart';
import 'package:domining_layout/app/modules/home/enitity/products_entity.dart';
import 'package:flutter/material.dart';

class ProductsItem extends StatelessWidget {
  const ProductsItem({
    Key? key,
    required this.productEnity,
  }) : super(key: key);

  final ProductEnity productEnity;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsPage(productEnity: productEnity),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * .50,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(1, 1),
              blurRadius: 5,
              spreadRadius: 1,
            )
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                productEnity.pathImage,
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              productEnity.title,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "\$ ${productEnity.price}",
              style: const TextStyle(
                color: Colors.greenAccent,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
