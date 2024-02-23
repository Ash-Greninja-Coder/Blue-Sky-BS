import 'package:flutter/material.dart';
import 'package:book/models/products.dart';

import '../../../../../constants.dart';

class Description extends StatelessWidget {
  const Description({super.key, required this.book});

  final Book book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        book.description,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}
