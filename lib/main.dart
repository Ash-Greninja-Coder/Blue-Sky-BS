import 'package:flutter/material.dart';
import 'package:book/models/welcome/welcome_screen.dart';
import 'package:book/models/login/login.dart';
import 'package:book/models/sign/signup.dart';
import 'package:book/models/screen/home/home_screen.dart';
import 'package:book/models/functions/menu.dart';
import 'package:book/models/functions/cart.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blue Sky',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomeScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/homepage': (context) =>const  HomeScreen(),
        '/menu': (context) => const Menu(),
        '/cart': (context) =>  const CartPage(),
      },
    );
  }
}