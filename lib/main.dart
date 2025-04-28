import 'package:flutter/material.dart';
import 'package:uniflutterloginscreens/screens/login_screen.dart';
import 'package:uniflutterloginscreens/screens/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const LoginScreen(),
      'signup': (context) => SignupScreen(),
    },
  ));
}
