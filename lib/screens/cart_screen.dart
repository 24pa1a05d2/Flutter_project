// lib/screens/cart_screen.dart
import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../main.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  void _showOrderConfirmation(BuildContext context) {
    final cart = ShopScope.of(context);
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppTheme.background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 60, height: 60,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(184, 92, 56, 0.12),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.check_circle, color: AppTheme.primary, size: 36),
            ),
            const SizedBox(height: 14),
            const Text('Order Placed!', style: AppTheme.heading),
            const SizedBox(height: 8),
            const Text(
              'Thank you for supporting rural artisans!\nYour order has been placed successfully.',
              textAlign: TextAlign.center,
              style: AppTheme.body,
            ),
          ],
        ),
        actions: [
          Center(
            child: ElevatedButton(
              style: AppTheme.primaryButtonStyle,
              onPressed: () { cart.clearCart(); Navigator.of(ctx).pop(); },
              child: const Text('Great, Thanks!'),
            ),
          ),
          const SizedBox(height: 4),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(title: const Text('My Cart'), automaticallyImplyLeading: false),
      body: AnimatedBuilder(
        animation: ShopScope.of(context),
        builder: (context, _) {
          final cart = ShopScope.of(context);
          final items = cart.items;

          if (items.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart_outlined, size: 64, color: AppTheme.textLight),
                  SizedBox(height: 16),
                  Text('Your cart is empty', style: AppTheme.subheading),
                  SizedBox(height: 8),
                  Text(
                    'Browse our handmade products\nand add them to your cart.',
                    textAlign: TextAlign.center,
                    style: AppTheme.caption,
                  ),
                ],
              ),
            );
          }

          return Column(
            children: [
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(16),
                  itemCount: items.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return Container(
                      decoration: AppTheme.cardDecoration,
                      padding: const EdgeInsets.all(12),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              item.product.imageAsset,
                              width: 70, height: 70, fit: BoxFit.cover,
                              errorBuilder: (_, __, ___) => Container(
                                width: 70, height: 70,
                                color: AppTheme.surface,
                                child: const Icon(Icons.image, color: AppTheme.textLight),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(item.product.name, style: AppTheme.productName),
                                const SizedBox(height: 2),
                                Text(item.product.artisanName, style: AppTheme.caption),
                                const SizedBox(height: 6),
                                Text('\u20B9 ${item.totalPrice.toStringAsFixed(0)}', style: AppTheme.price),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () => cart.removeItem(item.product.id),
                                child: const Icon(Icons.delete_outline, size: 18, color: AppTheme.textLight),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  _QuantityButton(icon: Icons.remove, onTap: () => cart.decreaseQuantity(item.product.id)),
                                  SizedBox(
                                    width: 28,
                                    child: Text('${item.quantity}', textAlign: TextAlign.center, style: AppTheme.subheading),
                                  ),
                                  _QuantityButton(icon: Icons.add, onTap: () => cart.increaseQuantity(item.product.id)),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  border: Border(top: BorderSide(color: AppTheme.divider)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(101, 48, 17, 0.06),
                      blurRadius: 10,
                      offset: Offset(0, -2),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${items.length} item${items.length > 1 ? "s" : ""}', style: AppTheme.body),
                        Text('\u20B9 ${cart.totalPrice.toStringAsFixed(0)}', style: AppTheme.price.copyWith(fontSize: 18)),
                      ],
                    ),
                    const SizedBox(height: 12),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: AppTheme.primaryButtonStyle,
                        onPressed: () => _showOrderConfirmation(context),
                        child: const Text('Place Order'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  const _QuantityButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 26, height: 26,
        decoration: BoxDecoration(
          color: AppTheme.categoryUnselected,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Icon(icon, size: 14, color: AppTheme.textDark),
      ),
    );
  }
}
