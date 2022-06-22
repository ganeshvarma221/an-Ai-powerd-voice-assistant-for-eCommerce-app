// ignore_for_file: file_names

// ignore: unused_import
import 'package:alan/newarivaldress.dart';
import 'package:flutter/material.dart';

import 'newarrivalpants.dart';
import 'shirt.dart';
import 'tshirt copy.dart';

class Category {
  final String icon, title;
  final Widget press;
  Category({required this.icon, required this.title, required this.press});
}

// ignore: non_constant_identifier_names
List<Category> demo_categories = [
  Category(
      icon: "assets/icons/dress.svg",
      title: "Dress",
      press: const newArivalDress()),
  Category(
      icon: "assets/icons/shirt.svg",
      title: "Shirt",
      press: const newArivalshirts()),
  Category(
      icon: "assets/icons/pants.svg",
      title: "Pants",
      press: const newArivalpants()),
  Category(
      icon: "assets/icons/Tshirt.svg",
      title: "Tshirt",
      press: const newArivaltshirt()),
];
