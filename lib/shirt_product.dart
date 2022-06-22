// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Shirt_Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Shirt_Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

// ignore: non_constant_identifier_names
List<Shirt_Product> shirt_demo_product = [
  Shirt_Product(
    image: "assets/images/product_0.png",
    title: "Long Sleeve Shirts",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Shirt_Product(
    image: "assets/images/9.jpg",
    title: "Casual Henley Shirts",
    price: 99,
  ),
  Shirt_Product(
    image: "assets/images/product_2.png",
    title: "Curved Hem Shirts",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Shirt_Product(
    image: "assets/images/11.png",
    title: "Casual Nolin",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
];
