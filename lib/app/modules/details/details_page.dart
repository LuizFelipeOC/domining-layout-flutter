import 'package:domining_layout/app/modules/home/enitity/products_entity.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.productEnity});

  final ProductEnity productEnity;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              iconTheme: const IconThemeData(color: Colors.black),
              expandedHeight: 500,
              floating: false,
              pinned: true,
              backgroundColor: Colors.white,
              elevation: 0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(
                  widget.productEnity.pathImage,
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
          ];
        },
        body: ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                widget.productEnity.title,
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Text(
                "\$ ${widget.productEnity.price}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.greenAccent,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Text(
                "Description",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Text(
                "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
