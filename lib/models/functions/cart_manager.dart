// cart_manager.dart
import 'package:book/models/products.dart';
import 'package:book/constants.dart';

class CartManager {

 void addToCart(Book book) {
    cartItems.add(book);
 }

 void removeFromCart(Book book) {
    cartItems.remove(book);
 }

 List<Book> getCartItems() {
    return cartItems;
 }
}

final CartManager cartManager = CartManager();
