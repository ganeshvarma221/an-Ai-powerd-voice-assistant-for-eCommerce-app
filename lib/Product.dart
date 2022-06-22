// ignore_for_file: file_names

// ignore: unused_import
import 'dart:ffi';

import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int price;
  final Color bgColor;

  Product({
    required this.image,
    required this.title,
    required this.price,
    this.bgColor = const Color(0xFFEFEFF2),
  });
}

// ignore: non_constant_identifier_names
List<Product> demo_product = [
  Product(
    image: "assets/images/product_0.png",
    title: "Long Sleeve Shirts",
    price: 165,
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    image: "assets/images/1.png",
    title: "Dot Short Dress V-neck",
    price: 450,
  ),
  Product(
    image: "assets/images/product_1.png",
    title: "Curved Hem Shirts",
    price: 180,
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    image: "assets/images/5.jpg",
    title: "casual pant for Men",
    price: 450,
    bgColor: const Color(0xFFEEEEED),
  ),
];
