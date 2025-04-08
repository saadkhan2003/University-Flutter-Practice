import 'package:flutter/material.dart';
import 'package:uniflutterloginscreens/screens/signup_screen.dart';

class Signupcustomfield extends StatelessWidget {
    final String text;
  const Signupcustomfield ({super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.purple,
      ),
      textAlign: TextAlign.center,
    );
  }
}