import 'package:flutter/material.dart';

class TrackOrderScreen extends StatelessWidget {
  const TrackOrderScreen({super.key});
 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Track Order'),
      ),
      body: ListView.builder(
        itemCount: 10, // Example item count
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Order #${index + 1}'),
            subtitle:const Text('Status: Delivered'), // Example status
            onTap: () {
              // Navigate to order details or similar
            },
          );
        },
      ),
    );
 }
}
