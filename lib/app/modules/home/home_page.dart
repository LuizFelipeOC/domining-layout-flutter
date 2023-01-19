import 'package:domining_layout/app/core/shared/app_images.dart';
import 'package:domining_layout/app/modules/home/enitity/categories_entity.dart';
import 'package:domining_layout/app/modules/home/widgets/list_cotegories.dart';
import 'package:domining_layout/app/modules/home/widgets/search_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 60),
              SearchBox(
                onChanged: (String value) {},
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(
                height: 90,
                child: CategoriesListWidgets(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
