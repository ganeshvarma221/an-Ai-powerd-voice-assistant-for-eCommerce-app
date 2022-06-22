import 'package:alan/pants_product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Product.dart';
import 'constants.dart';
import 'newarrivalpants.dart';
import 'pants_details_screen.dart';
import 'product_card.dart';
import 'section_title.dart';

class pants_product extends StatelessWidget {
  const pants_product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SectionTitle(
            title: "pants",
            pressSeeAll: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const newArivalpants(),
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
        )
      ],
    );
  }
}
