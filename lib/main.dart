// main.dart
import 'package:flutter/material.dart';
import 'package:book/models/welcome/welcome_screen.dart';
import 'package:book/models/login/login.dart';
import 'package:book/models/sign/signup.dart';
import 'package:book/models/screen/home/home_screen.dart';
import 'package:book/models/functions/menu.dart';
import 'package:book/models/functions/cart.dart';
import 'package:book/models/functions/cart_manager.dart'; 
import 'package:book/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 SharedPreferences prefs = await SharedPreferences.getInstance();
 isDarkMode = prefs.getBool('isDarkMode') ?? false; // Load the preference, default to false if not set
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
 MyApp({super.key});

 final ThemeData lightTheme = ThemeData.light();
 final ThemeData darkTheme = ThemeData.dark();

 @override
 Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blue Sky',
      theme: isDarkMode ? darkTheme : lightTheme,
      debugShowCheckedModeBanner: false,
      home: const WelcomeScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/homepage': (context) => const HomeScreen(),
        '/menu': (context) => const Menu(),
        '/cart': (context) => CartPage(cartManager: CartManager()),
      },
    );
 }
}
