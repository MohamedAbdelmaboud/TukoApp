import 'package:flutter/material.dart';

import '../models/word_model.dart';
import '../widgets/word_item.dart';

final List<WordModel> members = [
  WordModel(
    enName: "Father",
    image: "assets/images/family_members/family_father.png",
  ),
  WordModel(
    enName: "mother",
    image: "assets/images/family_members/family_mother.png",
  ),
  WordModel(
    enName: "Grandfather",
    image: "assets/images/family_members/family_grandfather.png",
  ),
  WordModel(
    enName: "Grandmother",
    image: "assets/images/family_members/family_grandmother.png",
  ),
  WordModel(
    enName: "Son",
    image: "assets/images/family_members/family_son.png",
  ),
  WordModel(
    enName: "Daughter",
    image: "assets/images/family_members/family_daughter.png",
  ),
  WordModel(
    enName: "older sister",
    image: "assets/images/family_members/family_older_sister.png",
  ),
  WordModel(
    enName: "younger brother",
    image: "assets/images/family_members/family_younger_brother.png",
  ),
  WordModel(
    enName: "younger sister",
    image: "assets/images/family_members/family_younger_sister.png",
  ),
];

class FamilyView extends StatelessWidget {
  const FamilyView({Key? key}) : super(key: key);
  static const String id = 'FamilyView';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 250, 90, 143),
            leading: const Icon(Icons.family_restroom),
            title: const Text(
              "Family ..",
              style: TextStyle(fontFamily: "Pacifico", fontSize: 26),
            ),
            centerTitle: true,
          ),
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/wallpaper/n.jpg"),
                    fit: BoxFit.cover)),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: members.length,
              itemBuilder: ((context, index) {
                return WordItem(
                    model: members[index],
                    color: const Color.fromARGB(255, 250, 90, 143));
              }),
            ),
          ),
        ));
  }
}
