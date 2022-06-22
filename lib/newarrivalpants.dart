// ignore_for_file: camel_case_types

import 'package:alan/pants_product.dart';
import 'package:flutter/material.dart';

import 'pants_details_screen.dart';
import 'product_card2.dart';

class newArivalpants extends StatelessWidget {
  const newArivalpants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "pants",
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
                pants_demo_product.length,
                (index) => Product_Card(
                  title: pants_demo_product[index].title,
                  image: pants_demo_product[index].image,
                  price: pants_demo_product[index].price,
                  bgColor: pants_demo_product[index].bgColor,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PantsDetailsScreen(
                              product: pants_demo_product[index]),
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
