import 'package:flutter/material.dart';
import 'package:uniflutterloginscreens/screens/login_screen.dart';
import 'package:uniflutterloginscreens/screens/signup_screen.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const LoginScreen(),
      'signup': (context) => const SignupScreen(),
      
    },
  ));
}
