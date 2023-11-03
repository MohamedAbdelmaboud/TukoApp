import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.lightBlue,
        shadowColor: const Color.fromARGB(255, 5, 42, 255),
        elevation: 10,
        minimumSize: const Size(70, 40),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: "ZillaSlab",
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
