import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  CartPageState createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
  final List<CartItem> _cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: _cartItems.isEmpty
          ? const Center(
              child: Text('Your cart is empty'),
            )
          : ListView.builder(
              itemCount: _cartItems.length,
              itemBuilder: (context, index) {
                final item = _cartItems[index];
                return ListTile(
                  leading: Image.network(item.imageUrl),
                  title: Text(item.name),
                  subtitle: Text('Quantity: ${item.quantity}'),
                  trailing: const Text('INR{item.price * item.quantity}'),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _cartItems.add(
              CartItem(
                name: 'Item ${_cartItems.length + 1}',
                imageUrl: 'https://via.placeholder.com/150',
                price: 10.99,
                quantity: 1,
              ),
            );
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CartItem {
  final String name;
  final String imageUrl;
  final double price;
  final int quantity;

  CartItem({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.quantity,
  });
}