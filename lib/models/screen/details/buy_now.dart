import 'package:book/constants.dart';
import 'package:flutter/material.dart';
import 'package:book/models/products.dart';
import 'package:book/models/screen/details/components/address.dart';

class BuyNowDetailsPage extends StatelessWidget {
 final Book book;

 const BuyNowDetailsPage({super.key, required this.book});


 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(book.image), // Display product image
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 Text(
                    book.title, // Display product title
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                 ),
                 const SizedBox(height: 8),
                 Text(
                    book.description, // Display product description
                    style: const TextStyle(fontSize: 16),
                 ),
                 const SizedBox(height: 16),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '\$${book.price * numOfItems}', // Display product price
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          orderAndBookProduct(context,book); // Call method to handle order and booking
                        },
                        style: ButtonStyle(
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(const EdgeInsets.symmetric(horizontal: 24, vertical: 12)),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        child:
                            const Text('Buy Now', style: TextStyle(color: Colors.white)),
                      ),
                    ],
                 ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
 }
}
