import 'package:domining_layout/app/core/shared/app_images.dart';
import 'package:domining_layout/app/modules/home/enitity/products_entity.dart';
import 'package:domining_layout/app/modules/home/widgets/products_item.dart';
import 'package:flutter/material.dart';

class ListProductsWidget extends StatelessWidget {
  const ListProductsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .30,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: [
          ProductsItem(
            productEnity: ProductEnity(
              pathImage: AppImages.produto,
              price: '300.00',
              title: 'Produto 1',
            ),
          ),
          ProductsItem(
            productEnity: ProductEnity(
              pathImage: AppImages.produto2,
              price: '400.00',
              title: 'Produto 2',
            ),
          ),
          ProductsItem(
            productEnity: ProductEnity(
              pathImage: AppImages.produto3,
              price: '150.00',
              title: 'Produto 3',
            ),
          ),
          ProductsItem(
            productEnity: ProductEnity(
              pathImage: AppImages.produto4,
              price: '500.00',
              title: 'Produto 4',
            ),
          ),
        ],
      ),
    );
  }
}
