import 'package:flutter/material.dart';

class HeadingTextA extends StatelessWidget {
  final String text;
  final double fontSize;
  final MaterialColor color;
  const HeadingTextA({
    super.key,
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

class ButtonsA extends StatelessWidget {
    final String text;
    final MaterialColor bgcolor;
    final Color forgcolor;
  const ButtonsA({super.key,
    required this.text,
    this.bgcolor = Colors.purple,
    this.forgcolor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
      },
      style: ElevatedButton.styleFrom(
        minimumSize: Size(200, 80),
                  padding: EdgeInsets.symmetric(horizontal: 40,
                  
                  vertical: 15),
                  backgroundColor: bgcolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  foregroundColor: forgcolor,
                ),
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }
}
