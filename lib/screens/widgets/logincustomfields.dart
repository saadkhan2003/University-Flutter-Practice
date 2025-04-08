import 'package:flutter/material.dart';

class HeadingTextA extends StatelessWidget {
    final String text;
    final double fontSize;
    final MaterialColor color;
  const HeadingTextA({super.key,
    required this.text,
    this.fontSize = 45,
    this.color = Colors.purple,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: color,
      ),
      textAlign: TextAlign.center,
    );
  }
}
