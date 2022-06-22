// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'product_card2.dart';
import 'shirt_detail_screen.dart';
import 'shirt_product.dart';

class newArivalshirts extends StatelessWidget {
  const newArivalshirts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "shirts",
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
                shirt_demo_product.length,
                (index) => Product_Card(
                  title: shirt_demo_product[index].title,
                  image: shirt_demo_product[index].image,
                  price: shirt_demo_product[index].price,
                  bgColor: shirt_demo_product[index].bgColor,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => shirtDetailScreen(
                              product: shirt_demo_product[index]),
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
