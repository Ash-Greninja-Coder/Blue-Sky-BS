// widgets/add.dart
import 'package:book/constants.dart';
import 'package:book/models/screen/details/buy_now.dart';
import 'package:flutter/material.dart';
import 'package:book/models/products.dart';
import 'package:book/models/functions/cart_manager.dart';

class Add extends StatefulWidget {
 final Book book;

 const Add({super.key, required this.book});

 @override
 AddState createState() => AddState();
}

class AddState extends State<Add> {
 @override
void initState() {
 super.initState();
  // Check if the cart already contains the book
  int index = cartManager.getCartItems().indexWhere((item) => item.title == widget.book.title);
  
  if (index != -1) {
    // The book is already in the cart, so increment its quantity
    Book existingBook = cartManager.getCartItems()[index];
    existingBook.quantity += 1;
    numOfItems = existingBook.quantity;
     // Assuming the Book model has a quantity property
    // Optionally, remove the old book and add the updated one to maintain the list's order
    cartManager.removeFromCart(existingBook);
    cartManager.addToCart(existingBook);
  } else {
    // The book is not in the cart, so add it with a quantity of 1
    widget.book.quantity = 1; // Ensure the book has a quantity of 1 before adding
    cartManager.addToCart(widget.book);
  }
 }

void removeFromCart(Book book) {
    int index = cartManager.getCartItems().indexWhere((item) => item.title == widget.book.title);
    if (index != -1) {
      Book existingBook = cartManager.getCartItems()[index];
      existingBook.quantity -= 1;
      numOfItems = existingBook.quantity;
      if (existingBook.quantity <= 0) {
        cartManager.removeFromCart(existingBook);
      }
    }
    setState(() {}); // Update the state to reflect the removal
  }

 @override
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: cartManager.getCartItems().isEmpty
          ? const Center(
              child: Text('Your cart is empty'),
            )
          : ListView.builder(
              itemCount: cartManager.getCartItems().length,
              itemBuilder: (context, index) {
                final item = cartManager.getCartItems()[index];
                item.quantity = numOfItems;
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BuyNowDetailsPage(book: item)),
                );
                  },
                  child: ListTile(
                    leading: Image.network(item.image),
                    title: Text(item.title),
                    subtitle: Row(
                      children: <Widget>[
                        Text('Quantity: ${item.quantity}'),
                        const SizedBox(width: 10), // Add some spacing between quantity and price
                        Text('\u{20B9} ${item.price * item.quantity}'),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            removeFromCart(item); // Call removeFromCart method when decrement button is pressed
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            removeFromCart(item); // Call removeFromCart method when delete button is pressed
                          },
                        ),
                      ],
                    ),
                  ),
                );
                
              },
            ),
    );
 }
}
