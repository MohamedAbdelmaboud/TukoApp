import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:toku/models/category_model.dart';
import 'package:toku/views/family_view.dart';
import 'package:toku/views/colors_view.dart';
import 'package:toku/views/learn_view.dart';
import 'package:toku/views/numbers_view.dart';
import 'package:toku/views/phrases_view.dart';
import 'package:toku/widgets/category_items.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  static const String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categoryModels = [
      CategoryModel(
        text: "Numbers",
        color: Colors.blueAccent,
        ontap: () {
          speakAndNavigate("Let's learn numbers", NumbersView.id, context);
        },
      ),
      CategoryModel(
        text: "Family Members",
        color: Colors.pink,
        ontap: () {
          speakAndNavigate(
              "Let's learn Family Members", FamilyView.id, context);
        },
      ),
      CategoryModel(
        text: "Colors",
        color: Colors.lightBlue,
        ontap: () {
          speakAndNavigate("Let's learn Colors", ColorsView.id, context);
        },
      ),
      CategoryModel(
        text: "Phrases",
        color: Colors.deepPurple,
        ontap: () {
          speakAndNavigate("Let's learn some phrases", PhrasesView.id, context);
        },
      ),
      CategoryModel(
        text: "Learn what you want",
        color: Colors.lightBlue,
        ontap: () {
          speakAndNavigate("Learn what you want", LearnView.id, context);
        },
      ),
    ];
    List<CategoryItems> categoryItems = List.generate(categoryModels.length,
        (index) => CategoryItems(categoryModel: categoryModels[index]));
    //context -->location of the widget
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.language),
            title: const Text(
              "Talk",
              style: TextStyle(fontFamily: "Pacifico", fontSize: 25),
            ),
            centerTitle: false,
          ),
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/wallpaper/background.jpg"),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics:const NeverScrollableScrollPhysics(),
                  itemCount: categoryModels.length,
                  itemBuilder: (BuildContext context, int index) {
                    return categoryItems[index];
                  },
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "Copyright © , Mohamed Abdelmaboud ♥",
                  style: TextStyle(
                      fontFamily: "ZillaSlab",
                      fontSize: 12,
                      color: Colors.white),
                )
              ],
            ),
          )),
    );
  }
}

void speakAndNavigate(String text, String nameRoute, BuildContext context) {
  FlutterTts flutterTts = FlutterTts();
  flutterTts.setLanguage('en-US');
  flutterTts.setSpeechRate(0.4);
  flutterTts.speak(text);

  Navigator.pushNamed(context, nameRoute); // Named route
}
