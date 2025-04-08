import 'package:flutter/material.dart';
import 'package:uniflutterloginscreens/screens/login_screen.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const LoginScreen(),
    },
  ));
}
