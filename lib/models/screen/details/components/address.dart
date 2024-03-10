import 'package:flutter/material.dart';
import 'package:book/models/products.dart';

void orderAndBookProduct(BuildContext context, Book book) {
 showDialog(
    context: context,
    builder: (BuildContext context) {
      String address = '';
      return AlertDialog(
        title: const Text('Enter Your Address'),
        content: TextField(
          onChanged: (value) {
            address = value;
          },
          decoration: const InputDecoration(
            hintText: 'Enter your address here',
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              showDialog(
                context: context,
                builder: (BuildContext context) {
                 return AlertDialog(
                    title: const Text('Order Confirmation'),
                    content: Text('You have successfully ordered and booked ${book.title}.\nYour order will be delivered to: $address'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('OK'),
                      ),
                    ],
                 );
                },
              );
            },
            child: const Text('Submit'),
          ),
        ],
      );
    },
 );
}
