import 'package:flutter/material.dart'; // Ensure this import path is correct
import 'package:book/models/functions/cart_manager.dart'; // Assuming this is the correct import path for CartManager

class CartPage extends StatefulWidget {
 final CartManager cartManager;

 const CartPage({super.key, required this.cartManager});

 @override
 CartPageState createState() => CartPageState();
}

class CartPageState extends State<CartPage> {
 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: widget.cartManager.getCartItems().isEmpty
          ? const Center(
              child: Text('Your cart is empty'),
            )
          : ListView.builder(
              itemCount: widget.cartManager.getCartItems().length,
              itemBuilder: (context, index) {
                final item = widget.cartManager.getCartItems()[index];
                return ListTile(
                 leading: Image.network(item.image),
                 title: Text(item.title),
                 subtitle: Text('Quantity: ${item.quantity}'),
                 trailing: Text('\u{20B9} ${item.price * item.quantity}'),
                );
              },
            ),
    );
 }
}


