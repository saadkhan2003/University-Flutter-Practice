// Importing necessary Flutter packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/logincustomfields.dart';
import 'package:flutter/widgets.dart';
import 'package:auth_buttons/auth_buttons.dart';


// Defining a StatefulWidget for the Login Screen
class LoginScreen extends StatefulWidget {
  
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// Defining the state class for LoginScreen
class _LoginScreenState extends State<LoginScreen> {
  // Creating a global key for the form
  final formKey = GlobalKey<FormState>();

  // Boolean to toggle password visibility
  bool isPasswordVisible = false;

  // Controllers for email and password input fields
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Disposing controllers when the widget is removed from the tree
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  // Building the UI of the login screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: formKey, // Assigning the form key
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Welcome text
              HeadingTextA(text: 'Welcome Back', fontSize: 45),
    
              SizedBox(height: 5),

              // Subtitle text
              Text(
                'Sign in to continue',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 80),

              // Email input field
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email', // Label inside the text field
                  prefixIcon: Icon(Icons.email), // Icon before text field
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                // Validating email input
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email cannot be empty!';
                  }
                  if (!value.contains('@')) {
                    return 'Invalid email type';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),

              // Password input field
              TextFormField(
                controller: passwordController,
                obscureText: !isPasswordVisible, // Hiding or showing password
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: IconButton(
                    // Toggling password visibility
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                // Validating password input
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password cannot be empty';
                  }
                  if (value.length < 8) {
                    return 'Password length must be at least 8';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),

              // Forgot Password Button
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    print('Forgot password pressed');
                  },
                  child: Text('Forgot Password'),
                ),
              ),
              SizedBox(height: 30),

              // Login Button
           
              SizedBox(height: 10),
              ButtonsA(text: 'Login'),

              // Signup navigation text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Do not have an account?'),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'signup');
                      
                   },
                    child: Text(
                      'Signup',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              GoogleAuthButton(
                onPressed: () {
                  // Handle Google Sign-In here
                  print('Google Sign-In pressed');
                },
                style: AuthButtonStyle(
                  buttonColor: Colors.white,
                  iconColor: Colors.black,
                  borderRadius: 10.0,
                  padding: const EdgeInsets.all(10),
                  iconSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
