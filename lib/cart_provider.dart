// lib/cart_provider.dart
// Simple cart state manager using ChangeNotifier (no external packages needed).
// Screens call methods on this class to add/remove items and update quantities.

import 'package:flutter/foundation.dart';
import 'models/product.dart';
import 'models/cart_item.dart';

class CartProvider extends ChangeNotifier {
  // Internal list of cart items
  final List<CartItem> _items = [];

  // Read-only access to the cart items list
  List<CartItem> get items => List.unmodifiable(_items);

  // Total number of distinct products in the cart
  int get itemCount => _items.length;

  // Total price of all items
  double get totalPrice =>
      _items.fold(0, (sum, item) => sum + item.totalPrice);

  // Add a product to the cart. If it already exists, increase the quantity.
  void addToCart(Product product) {
    final index = _items.indexWhere((item) => item.product.id == product.id);
    if (index >= 0) {
      _items[index].quantity++;
    } else {
      _items.add(CartItem(product: product));
    }
    notifyListeners();
  }

  // Increase quantity of an item by 1
  void increaseQuantity(String productId) {
    final index = _items.indexWhere((item) => item.product.id == productId);
    if (index >= 0) {
      _items[index].quantity++;
      notifyListeners();
    }
  }

  // Decrease quantity of an item by 1. Remove if quantity reaches 0.
  void decreaseQuantity(String productId) {
    final index = _items.indexWhere((item) => item.product.id == productId);
    if (index >= 0) {
      if (_items[index].quantity > 1) {
        _items[index].quantity--;
      } else {
        _items.removeAt(index);
      }
      notifyListeners();
    }
  }

  // Remove an item completely from the cart
  void removeItem(String productId) {
    _items.removeWhere((item) => item.product.id == productId);
    notifyListeners();
  }

  // Clear all items (called after order is placed)
  void clearCart() {
    _items.clear();
    notifyListeners();
  }

  // Check if a product is already in the cart
  bool isInCart(String productId) {
    return _items.any((item) => item.product.id == productId);
  }
}
