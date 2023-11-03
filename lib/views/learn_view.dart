// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toku/widgets/category_items.dart';
import 'package:toku/widgets/custom_button.dart';
import 'package:toku/widgets/phrase_item.dart';

class LearnView extends StatefulWidget {
  const LearnView({super.key});
  static const String id = 'LearnView';
  @override
  State<LearnView> createState() => _LearnViewState();
}

class _LearnViewState extends State<LearnView> {
  final List<String> containerTexts = [];
  final formKey = GlobalKey<FormState>();
  TextEditingController wordController = TextEditingController();

  void addcontainer() {
    if (formKey.currentState!.validate()) {
      String text = wordController.text;

      setState(() {
        containerTexts.add(text);
        wordController.clear();
      });
    }
  }

  void clearAll() {
    setState(() {
      containerTexts.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          leading: const Icon(IconlyBold.category),
          title: const Text(
            "Learn ..",
            style: TextStyle(fontFamily: "Pacifico", fontSize: 26),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: ((value) {
                    if (value!.isEmpty) {
                      return 'Enter a word please !';
                    }
                    return null;
                  }),
                  cursorHeight: 30,
                  autocorrect: true,
                  controller: wordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                CustomButton(
                  text: 'Add Word',
                  onPressed: addcontainer,
                ),
                const SizedBox(
                  height: 4,
                ),
                CustomButton(text: 'Clear All', onPressed: clearAll),
                Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: containerTexts.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.only(left: 15),
                        margin: const EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 10,
                        ),
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.lightBlue,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              containerTexts[index],
                              style: const TextStyle(
                                fontSize: 20,
                                fontFamily: "ZillaSlab",
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.play_circle,
                                    color: Colors.white,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    FlutterTts flutterTts = FlutterTts();
                                    flutterTts.setLanguage('en-US');
                                    flutterTts.setSpeechRate(0.4);
                                    flutterTts.speak(containerTexts[index]);
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.delete_forever,
                                    color: Colors.red,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    containerTexts.removeAt(index);
                                    setState(() {});
                                  },
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
