// ignore_for_file: camel_case_types

import 'package:alan/Product.dart';
import 'package:flutter/material.dart';

import 'details_screen.dart';
import 'product_card2.dart';

class newArival extends StatelessWidget {
  const newArival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "NewArrival",
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
                demo_product.length,
                (index) => Product_Card(
                  title: demo_product[index].title,
                  image: demo_product[index].image,
                  price: demo_product[index].price,
                  bgColor: demo_product[index].bgColor,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(product: demo_product[index]),
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
