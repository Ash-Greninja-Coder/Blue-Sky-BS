import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            const Text(
              'User Name',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to edit profile or similar
              },
              child:const  Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
 }
}
