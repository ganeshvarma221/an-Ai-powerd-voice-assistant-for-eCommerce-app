import 'package:flutter/material.dart';

import 'constants.dart';
import 'product_card.dart';
import 'section_title.dart';
import 'tshirt copy.dart';
import 'tshirt_details_screen.dart';
import 'tshirt_product.dart';

// ignore: camel_case_types
class tshirt_dart extends StatelessWidget {
  const tshirt_dart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "tshirt",
            pressSeeAll: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const newArivaltshirt(),
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
              tshirt_demo_product.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
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
        )
      ],
    );
  }
}
