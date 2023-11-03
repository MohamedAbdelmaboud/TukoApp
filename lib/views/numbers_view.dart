// ignore_for_file: file_names, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toku/models/word_model.dart';
import 'package:toku/widgets/word_item.dart';

final List<WordModel> numbers = [
  WordModel(
    enName: "one",
    image: "assets/images/numbers/one.png",
  ),
  WordModel(
    enName: "Two",
    image: "assets/images/numbers/two.png",
  ),
  WordModel(
    enName: "Three",
    image: "assets/images/numbers/three.png",
  ),
  WordModel(
    enName: "Four",
    image: "assets/images/numbers/four.png",
  ),
  WordModel(
    enName: "Five",
    image: "assets/images/numbers/five.png",
  ),
  WordModel(
    enName: "Six",
    image: "assets/images/numbers/six.png",
  ),
  WordModel(
    enName: "Seven",
    image: "assets/images/numbers/seven.png",
  ),
  WordModel(
    enName: "Eight",
    image: "assets/images/numbers/eight.png",
  ),
  WordModel(
    enName: "Nine",
    image: "assets/images/numbers/nine.png",
  )
];

class NumbersView extends StatelessWidget {
  const NumbersView({Key? key}) : super(key: key);
  static const String id = 'NumbersView';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            leading: const Icon(FontAwesomeIcons.listNumeric),
            title: const Text(
              "Numbers",
              style: TextStyle(fontFamily: "Pacifico", fontSize: 26),
            ),
            centerTitle: true,
          ),
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/wallpaper/c.jpg"),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: numbers.length,
                itemBuilder: ((context, index) {
                  return WordItem(
                    model: numbers[index],
                    color: Colors.blueAccent,
                  );
                }),
              ),
            ),
          ),
        ));
  }
}
