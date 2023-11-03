// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:toku/models/category_model.dart';

//numbers ... family...colors..phrases
class CategoryItems extends StatelessWidget {
  const CategoryItems({required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 35.0),
      child: GestureDetector(
        onTap: categoryModel.ontap,
        child: Container(
            decoration: BoxDecoration(
                //  backgroundBlendMode: BlendMode.color,
                color: categoryModel.color,
                borderRadius: BorderRadius.circular(99)),
            padding:
                const EdgeInsets.only(left: 25), //margin outside the container
            alignment: Alignment.centerLeft,
            // width: double.infinity,
            height: 65,
            child: Text(categoryModel.text,
                style: const TextStyle(
                    fontFamily: "ZillaSlab",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))),
      ),
    );
  }
}
