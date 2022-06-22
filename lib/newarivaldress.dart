// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'dess_product.dart';
import 'dress_details_screen.dart';
import 'product_card2.dart';

class newArivalDress extends StatelessWidget {
  const newArivalDress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Dresses",
          // ignore: unnecessary_const
        ),
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            scrollDirection: Axis.vertical,
            child: Column(
              children: List.generate(
                dress_demo_product.length,
                (index) => Product_Card(
                  title: dress_demo_product[index].title,
                  image: dress_demo_product[index].image,
                  price: dress_demo_product[index].price,
                  bgColor: dress_demo_product[index].bgColor,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DressDetailsScreen(
                              product: dress_demo_product[index]),
                        ));
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
