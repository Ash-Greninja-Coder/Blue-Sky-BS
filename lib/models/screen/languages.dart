import 'package:flutter/material.dart';

class LanguagesScreen extends StatelessWidget {
  const LanguagesScreen({super.key});
 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Languages'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title:const Text('English'),
            trailing: Radio(
              value: 'English',
              groupValue: 'English', // Example value
              onChanged: (value) {
                // Handle language change
              },
            ),
          ),
          ListTile(
            title:const Text('Hindi'),
            trailing: Radio(
              value: 'Hindi',
              groupValue: 'English', // Example value
              onChanged: (value) {
                // Handle language change
              },
            ),
          ),
          // Add more languages as needed
        ],
      ),
    );
 }
}
