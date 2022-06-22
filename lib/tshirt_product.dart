// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class tshirt_Product {
  final String image, title;
  final int price;
  final Color bgColor;

  tshirt_Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

// ignore: non_constant_identifier_names
List<tshirt_Product> tshirt_demo_product = [
  tshirt_Product(
    image: "assets/images/10.png",
    title: "casual pant for Men",
    price: 450,
    bgColor: const Color(0xFFFEFBF9),
  ),
  tshirt_Product(
    image: "assets/images/product_1.png",
    title: "casual jeen for Men",
    price: 399,
  ),
  tshirt_Product(
    image: "assets/images/12.jpg",
    title: "casual pant for Men",
    price: 280,
    bgColor: const Color(0xFFF8FEFB),
  ),
  tshirt_Product(
    image: "assets/images/product_3.png",
    title: "cargo pant for Men",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
];
