import 'package:flutter/material.dart';

class CategoryModel {
    final String text;
  final Color color;
  final Function()? ontap;

  CategoryModel({required this.text, required this.color, required this.ontap});
}