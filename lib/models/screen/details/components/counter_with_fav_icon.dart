import 'package:flutter/material.dart';

class Heart extends StatelessWidget {
  const Heart({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        color: Color(0xFFFF6464),
        shape: BoxShape.circle,
      ),
      child:const Icon(
        Icons.favorite,
        color: Colors.white,
        size: 24,
      ),
    );
  }
}