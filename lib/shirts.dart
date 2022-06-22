import 'package:flutter/material.dart';

import 'constants.dart';
import 'product_card.dart';
import 'section_title.dart';
import 'shirt.dart';
import 'shirt_detail_screen.dart';
import 'shirt_product.dart';

// ignore: camel_case_types
class shirt_product extends StatelessWidget {
  const shirt_product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "shirts",
            pressSeeAll: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const newArivalshirts(),
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
              shirt_demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
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
        )
      ],
    );
  }
}
