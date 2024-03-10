import 'package:flutter/material.dart';
import 'package:book/models/screen/details/components/cart_counter.dart';

class Heart extends StatelessWidget {
 const Heart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFFF6464),
        shape: BoxShape.circle,
      ),
      child: const Stack(
        children: [
          Icon(
            Icons.favorite,
            color: Colors.white,
            size: 24,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: CartCounter(),
          ),
        ],
      ),
    );
  }
}
