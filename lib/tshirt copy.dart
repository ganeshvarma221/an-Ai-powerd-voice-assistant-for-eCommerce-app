// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'product_card2.dart';
import 'tshirt_details_screen.dart';
import 'tshirt_product.dart';

class newArivaltshirt extends StatelessWidget {
  const newArivaltshirt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Tshirts",
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
                tshirt_demo_product.length,
                (index) => Product_Card(
                  title: tshirt_demo_product[index].title,
                  image: tshirt_demo_product[index].image,
                  price: tshirt_demo_product[index].price,
                  bgColor: tshirt_demo_product[index].bgColor,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => tshirtDetailsScreen(
                              product: tshirt_demo_product[index]),
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
