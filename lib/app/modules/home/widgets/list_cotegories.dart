import 'package:domining_layout/app/core/shared/app_images.dart';
import 'package:domining_layout/app/modules/home/enitity/categories_entity.dart';
import 'package:domining_layout/app/modules/home/widgets/item_categories.dart';
import 'package:flutter/cupertino.dart';

class CategoriesListWidgets extends StatelessWidget {
  const CategoriesListWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [
        CategoryItems(
          categoriesEntity: CategoriesEntity(
            image: AppImages.iconDevice,
            name: "",
            route: "",
          ),
        ),
        CategoryItems(
          categoriesEntity: CategoriesEntity(
            image: AppImages.iconGadgets,
            name: "",
            route: "",
          ),
        ),
        CategoryItems(
          categoriesEntity: CategoriesEntity(
            image: AppImages.iconGaming,
            name: "",
            route: "",
          ),
        ),
        CategoryItems(
          categoriesEntity: CategoriesEntity(
            image: AppImages.iconMshoes,
            name: "",
            route: "",
          ),
        ),
        CategoryItems(
          categoriesEntity: CategoriesEntity(
            image: AppImages.iconWshoes,
            name: "",
            route: "",
          ),
        ),
      ],
    );
  }
}
