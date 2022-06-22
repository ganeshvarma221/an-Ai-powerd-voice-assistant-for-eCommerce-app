// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Dress_Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Dress_Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

// ignore: non_constant_identifier_names
List<Dress_Product> dress_demo_product = [
  Dress_Product(
    image: "assets/images/1.png",
    title: "Dot Short Dress V-neck",
    price: 450,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Dress_Product(
    image: "assets/images/2.jpg",
    title: "o neck short sleeve",
    price: 399,
  ),
  Dress_Product(
    image: "assets/images/3.png",
    title: "Sleeve with Roll Up Tab Split V Neck",
    price: 280,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Dress_Product(
    image: "assets/images/4.png",
    title: "Casual Nolin",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
];
