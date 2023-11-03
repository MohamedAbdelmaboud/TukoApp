// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:toku/models/word_model.dart';

import '../widgets/word_item.dart';

List<WordModel> colors = [
  WordModel(
    enName: "black",
    image: "assets/images/colors/color_black.png",
  ),
  WordModel(
    enName: "white",
    image: "assets/images/colors/color_white.png",
  ),
  WordModel(
    enName: "gray",
    image: "assets/images/colors/color_gray.png",
  ),
  WordModel(
    enName: "brown",
    image: "assets/images/colors/color_brown.png",
  ),
  WordModel(
    enName: "dusty yellow",
    image: "assets/images/colors/color_dusty_yellow.png",
  ),
  WordModel(
    enName: "yellow",
    image: "assets/images/colors/color_yellow.png",
  ),
  WordModel(
    enName: "red",
    image: "assets/images/colors/color_red.png",
  ),
  WordModel(
    enName: "green",
    image: "assets/images/colors/color_green.png",
  ),
];

class ColorsView extends StatelessWidget {
  static const String id = 'ColorsView';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            leading: const Icon(IconlyBold.category),
            title: const Text(
              "Colors ..",
              style: TextStyle(fontFamily: "Pacifico", fontSize: 26),
            ),
            centerTitle: true,
          ),
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/wallpaper/color.jpg"),
                    fit: BoxFit.cover)),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => WordItem(
                model: colors[index],
                color: Colors.lightBlue,
              ),
              itemCount: colors.length,
            ),
          ),
        ));
  }
}
