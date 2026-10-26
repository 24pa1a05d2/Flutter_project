import 'package:flutter/foundation.dart';
import 'data/sample_products.dart';
import 'models/address.dart';
import 'models/cart_item.dart';
import 'models/order.dart';
import 'models/product.dart';

class ShopState extends ChangeNotifier {
  final List<CartItem> _items = [];
  final List<String> _wishlistIds = [];
  final List<ShopOrder> _orders = [];
  final List<Address> _addresses = [
    Address(
      id: 'addr1',
      label: 'Home',
      fullName: 'Priya Sharma',
      phone: '+91 98765 43210',
      line1: '14, Hill Road, Bandra West',
      line2: 'Near Bandra Station',
      city: 'Mumbai',
      state: 'Maharashtra',
      pincode: '400050',
      isDefault: true,
    ),
    Address(
      id: 'addr2',
      label: 'Office',
      fullName: 'Priya Sharma',
      phone: '+91 98765 43210',
      line1: 'WeWork, BKC, Plot C-68',
      city: 'Mumbai',
      state: 'Maharashtra',
      pincode: '400051',
    ),
  ];
  String _selectedAddressId = 'addr1';
  String _paymentMethod = 'Cash on Delivery';

  ShopState() {
    _seedOrders();
  }

  List<CartItem> get items => List.unmodifiable(_items);
  List<ShopOrder> get orders => List.unmodifiable(_orders);
  List<Address> get addresses => List.unmodifiable(_addresses);
  List<String> get wishlistIds => List.unmodifiable(_wishlistIds);

  int get itemCount => _items.fold(0, (sum, item) => sum + item.quantity);
  int get distinctCount => _items.length;
  double get totalPrice => _items.fold(0, (sum, item) => sum + item.totalPrice);
  double get shipping => totalPrice >= 999 || _items.isEmpty ? 0 : 49;
  double get payable => totalPrice + shipping;

  String get paymentMethod => _paymentMethod;
  Address get selectedAddress =>
      _addresses.firstWhere((a) => a.id == _selectedAddressId);

  void _seedOrders() {
    final diya = productById('2')!;
    final kurta = productById('4')!;
    _orders.add(
      ShopOrder(
        id: 'RA10842',
        placedAt: DateTime.now().subtract(const Duration(days: 12)),
        items: [CartItem(product: diya, quantity: 2)],
        address: _addresses.first,
        paymentMethod: 'UPI',
        total: 440,
        status: 'Delivered',
      ),
    );
    _orders.add(
      ShopOrder(
        id: 'RA10901',
        placedAt: DateTime.now().subtract(const Duration(days: 4)),
        items: [CartItem(product: kurta, quantity: 1)],
        address: _addresses.first,
        paymentMethod: 'Cash on Delivery',
        total: 650,
        status: 'Shipped',
      ),
    );
  }

  void addToCart(Product product, {int qty = 1}) {
    final index = _items.indexWhere((item) => item.product.id == product.id);
    if (index >= 0) {
      _items[index].quantity += qty;
    } else {
      _items.add(CartItem(product: product, quantity: qty));
    }
    notifyListeners();
  }

  void increaseQuantity(String productId) {
    final index = _items.indexWhere((item) => item.product.id == productId);
    if (index >= 0) {
      _items[index].quantity++;
      notifyListeners();
    }
  }

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

  void removeItem(String productId) {
    _items.removeWhere((item) => item.product.id == productId);
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }

  bool isInCart(String productId) =>
      _items.any((item) => item.product.id == productId);

  int quantityOf(String productId) {
    final index = _items.indexWhere((item) => item.product.id == productId);
    return index >= 0 ? _items[index].quantity : 0;
  }

  void toggleWishlist(String productId) {
    if (_wishlistIds.contains(productId)) {
      _wishlistIds.remove(productId);
    } else {
      _wishlistIds.add(productId);
    }
    notifyListeners();
  }

  bool isWishlisted(String productId) => _wishlistIds.contains(productId);

  List<Product> get wishlistProducts => sampleProducts
      .where((p) => _wishlistIds.contains(p.id))
      .toList();

  void selectAddress(String id) {
    _selectedAddressId = id;
    notifyListeners();
  }

  void addAddress(Address address) {
    if (address.isDefault) {
      for (final a in _addresses) {
        a.isDefault = false;
      }
      _selectedAddressId = address.id;
    }
    _addresses.add(address);
    notifyListeners();
  }

  void setPaymentMethod(String method) {
    _paymentMethod = method;
    notifyListeners();
  }

  ShopOrder placeOrder() {
    final order = ShopOrder(
      id: 'RA${10800 + _orders.length + 20}',
      placedAt: DateTime.now(),
      items: _items
          .map((e) => CartItem(product: e.product, quantity: e.quantity))
          .toList(),
      address: selectedAddress,
      paymentMethod: _paymentMethod,
      total: payable,
      status: 'Confirmed',
    );
    _orders.insert(0, order);
    _items.clear();
    notifyListeners();
    return order;
  }
}
