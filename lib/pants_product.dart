// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Pants_Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Pants_Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

// ignore: non_constant_identifier_names
List<Pants_Product> pants_demo_product = [
  Pants_Product(
    image: "assets/images/5.jpg",
    title: "Regular pant for Men",
    price: 450,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Pants_Product(
    image: "assets/images/6.png",
    title: "casual jeen for Men",
    price: 399,
  ),
  Pants_Product(
    image: "assets/images/7.jpg",
    title: "Tapered Fit Flat-Front Chinos",
    price: 280,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Pants_Product(
    image: "assets/images/8.png",
    title: "cargo pant for Men",
    price: 149,
    bgColor: const Color(0xFFEEEEED),
  ),
];
