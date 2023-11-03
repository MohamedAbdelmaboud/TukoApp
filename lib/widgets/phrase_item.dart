// ignore_for_file: use_key_in_widget_constructors, camel_case_types
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:toku/models/word_model.dart';

class PhraseItem extends StatelessWidget {
  //refactor the code
  const PhraseItem({required this.model, required this.color});
  final Color color;
  final WordModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        //backgroundBlendMode: BlendMode.color,
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                model.enName,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "ZillaSlab",
                  color: Colors.white,
                ),
              )),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
                icon:const Icon(
                  Icons.play_circle,
                  color: Colors.white,
                ),
                onPressed: () {
               FlutterTts flutterTts =FlutterTts();
                  flutterTts.setLanguage('en-US');
                  flutterTts.setSpeechRate(0.5);
               flutterTts.speak(model.enName);
                }),
          )
        ],
      ),
    );
  }
}
