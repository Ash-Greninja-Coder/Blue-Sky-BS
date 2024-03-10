// settings_screen.dart
import 'package:flutter/material.dart';
import 'package:book/models/screen/languages.dart';
import 'package:book/constants.dart'; // Import constants.dart
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
 const SettingsScreen({super.key});

 @override
 SettingsScreenState createState() => SettingsScreenState();
}

class SettingsScreenState extends State<SettingsScreen> {
 @override
 void initState() {
    super.initState();
    loadDarkModePreference();
 }

 void loadDarkModePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      isDarkMode = prefs.getBool('isDarkMode') ?? false; // Load the preference, default to false if not set
    });
 }

 void toggleDarkMode(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', value);
    setState(() {
      isDarkMode = value; // Update isDarkMode
    });
 }

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Notifications'),
            trailing: Switch(
              value: true, // Example value
              onChanged: (value) {
                // Handle switch change
              },
            ),
          ),
          ListTile(
            title: const Text('Dark Mode'),
            trailing: Switch(
              value: isDarkMode,
              onChanged: toggleDarkMode,
            ),
          ),
          ListTile(
            title: const Text('Language'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LanguagesScreen()),
              );
            },
          ),
        ],
      ),
    );
 }
}
