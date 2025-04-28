import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class signupcustomfields extends StatelessWidget {
    final String text;
    final FirebaseAuth _auth = FirebaseAuth.instance;
    final double fontSize;
  signupcustomfields({
    required this.text,
    this.fontSize = 55,
  });


  Future<void> createUser() async {
    final userCredentials = await _auth.createUserWithEmailAndPassword(
      email: "sdasdasdasd@gmail.com",
      password: "Saadkhan",
    );
    // Handle userCredentials if needed
  }

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