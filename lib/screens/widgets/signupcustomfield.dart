import 'package:flutter/material.dart';

class signupcustomfields extends StatelessWidget {
    final String text;
    final double fontSize;
  const signupcustomfields({super.key,
    required this.text,
    this.fontSize = 55,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
            labelText: text,
            labelStyle: TextStyle(color: Colors.deepPurple, fontSize: fontSize, fontWeight: FontWeight.bold),
            prefixIcon: Icon(Icons.person, color: Colors.deepPurple),
            border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.deepPurple),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
    );
  }
}