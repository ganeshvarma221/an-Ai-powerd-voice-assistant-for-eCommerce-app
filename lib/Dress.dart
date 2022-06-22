// ignore_for_file: camel_case_types

import 'package:alan/constants.dart';
import 'package:flutter/material.dart';

import 'Product.dart';
import 'dess_product.dart';
import 'dress_details_screen.dart';
import 'newarivaldress.dart';
import 'product_card.dart';
import 'section_title.dart';

class Dress_products extends StatelessWidget {
  const Dress_products({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "Dresses",
            pressSeeAll: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const newArivalDress(),
                  ));
            },
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
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
        )
      ],
    );
  }
}
