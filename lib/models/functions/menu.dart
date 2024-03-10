import 'package:flutter/material.dart';
import 'package:book/models/screen/profile_screen.dart';
import 'package:book/models/screen/settings_screen.dart';
import 'package:book/models/screen/languages.dart'; 
import 'package:book/models/screen/track_order_screen.dart';

class Menu extends StatelessWidget {
  const Menu({super.key}); // Corrected constructor syntax

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading:const  Icon(Icons.account_circle),
            title:const  Text('Profile'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const ProfileScreen()),
              );
            },
          ),
          ListTile(
            leading:const Icon(Icons.settings),
            title:const Text('Settings'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const SettingsScreen()),
              );
            },
          ),
          ListTile(
            leading:const Icon(Icons.language),
            title:const Text('Languages'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const LanguagesScreen()),
              );
            },
          ),
          ListTile(
            leading:const Icon(Icons.track_changes),
            title:const Text('Track Order'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const TrackOrderScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}