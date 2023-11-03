// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:toku/views/colors_view.dart';
import 'package:toku/views/family_view.dart';
import 'package:toku/views/home_view.dart';
import 'package:toku/views/learn_view.dart';
import 'package:toku/views/numbers_view.dart';
import 'package:toku/views/phrases_view.dart';

void main() {
  runApp(Talk());
}

class Talk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.id,
      routes: {
        NumbersView.id: (context) => const NumbersView(),
        FamilyView.id: (context) => const FamilyView(),
        ColorsView.id: (context) => ColorsView(),
        PhrasesView.id: (context) => PhrasesView(),
        LearnView.id: (context) => const LearnView(),
        HomeView.id: (context) => const HomeView()
      },
    );
  }
}
