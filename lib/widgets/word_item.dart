// ignore_for_file: use_key_in_widget_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:toku/models/word_model.dart';

class WordItem extends StatelessWidget {
  //refactor the code
  WordItem({
    required this.model,
    required this.color,
  });
  WordModel model;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // backgroundBlendMode: BlendMode.color,
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            height: 50,
            width: 50,
            child: Image.asset(model.image!),
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            model.enName,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: "ZillaSlab",
              color: Colors.white,
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
                icon: const Icon(
                  Icons.play_circle,
                  color: Colors.white,
                ),
                onPressed: () {
                  FlutterTts flutterTts = FlutterTts();
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
