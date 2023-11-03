// ignore_for_file: file_names, must_be_immutable, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:toku/models/word_model.dart';
import 'package:toku/widgets/phrase_item.dart';

class PhrasesView extends StatelessWidget {
  PhrasesView({Key? key}) : super(key: key);
  static const String id = 'PhrasesView';

  List<WordModel> phrases = [
    WordModel(
      enName: "My name is Mohamed Abdo",
    ),
    WordModel(
      enName: "keep moving forward",
    ),
    WordModel(
      enName: "How are you feeling",
    ),
    WordModel(
      enName: "I was born in 2003",
    ),
    WordModel(
      enName: "I love programming",
    ),
    WordModel(
      enName: "I am flutter developer",
    ),
    WordModel(
      enName: "What is your name",
    ),
    WordModel(
      enName: "Where are you going",
    ),
    WordModel(
      enName: "I am a student",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            leading: const Icon(Icons.wordpress),
            title: const Text(
              "Phrases .",
              style: TextStyle(fontFamily: "Pacifico", fontSize: 26),
            ),
            centerTitle: true,
          ),
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/wallpaper/phrase1.jpg"),
                    fit: BoxFit.cover)),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: phrases.length,
              itemBuilder: ((context, index) {
                return PhraseItem(
                  model: phrases[index],
                  color: Colors.deepPurple,
                );
              }),
            ),
          ),
        ));
  }
}
