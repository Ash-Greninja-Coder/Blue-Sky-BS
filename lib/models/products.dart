// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Book {
 final String image, title, description;
 final double price, size;
 final int id;
 final Color color;
 int quantity;

 Book({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.id,
    required this.color,
    this.quantity = 1, // Default quantity is 1
 });
}

List<Book> books = [
  Book(
      id: 1,
      title: "Book 1",
      price: 409,
      size: 12,
      description: dummyText,
      image: "assests/images/Book_1.jpeg",
      color: const Color(0xFF3D82AE),
      quantity: 1),
  Book(
      id: 2,
      title: "Book 2",
      price: 11025,
      size: 8,
      description: dummyText,
      image: "assests/images/Book_2.jpeg",
      color:const Color(0xFFD3A984),
      quantity: 1),
  Book(
      id: 3,
      title: "Book 3",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assests/images/Book_3.jpeg",
      color:const Color(0xFF989493),
      quantity: 1),
 Book(
      id: 4,
      title: "Book 4",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assests/images/Book_4.jpeg",
      color:const Color(0xFFE6B398),
      quantity: 1),
  Book(
      id: 5,
      title: "Book 5",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assests/images/Book_5.jpeg",
      color: const Color(0xFFFB7883),
      quantity: 1),
  Book(
    id: 6,
    title: "Book 6",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assests/images/Book_6.jpeg",
    color: const Color(0xFFAEAEAE),
    quantity: 1
  ),
  Book(
      id: 1,
      title: "Book 7",
      price: 409,
      size: 12,
      description: "Best Books for CS Student.",
      image: "assests/images/Book_7.jpeg",
      color: const Color(0xFF3D82AE),
      quantity: 1),
  Book(
      id: 2,
      title: "Book 8",
      price: 11025,
      size: 8,
      description: dummyText,
      image: "assests/images/Book_8.jpeg",
      color:const Color(0xFFD3A984),
      quantity: 1),
  Book(
      id: 3,
      title: "Book 9",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assests/images/Book_9.jpeg",
      color:const Color(0xFF989493),
      quantity: 1),
 Book(
      id: 4,
      title: "Book 10",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assests/images/Book_10.jpeg",
      color:const Color(0xFFE6B398),
      quantity: 1),
  Book(
      id: 5,
      title: "Book 11",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assests/images/Book_11.jpeg",
      color: const Color(0xFFFB7883),
      quantity: 1),
  Book(
    id: 6,
    title: "Book 12",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assests/images/Book_12.jpeg",
    color: const Color(0xFFAEAEAE),
    quantity: 1
  ),
];

String dummyText =
    "Best Book For CS student. Best for Programming and Coding.";