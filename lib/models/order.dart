import 'address.dart';
import 'cart_item.dart';

class ShopOrder {
  final String id;
  final DateTime placedAt;
  final List<CartItem> items;
  final Address address;
  final String paymentMethod;
  final double total;
  String status;

  ShopOrder({
    required this.id,
    required this.placedAt,
    required this.items,
    required this.address,
    required this.paymentMethod,
    required this.total,
    this.status = 'Confirmed',
  });

  int get itemCount => items.fold(0, (sum, item) => sum + item.quantity);
}
