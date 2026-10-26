// lib/screens/product_detail_screen.dart
import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../main.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;
  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final cart = ShopScope.of(context);
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(
        title: const Text('Product Details'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, size: 18),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Large product image
            Container(
              width: double.infinity,
              height: 300,
              color: AppTheme.surface,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    product.imageAsset,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => const Center(
                      child: Icon(Icons.image_not_supported, size: 64, color: AppTheme.textLight),
                    ),
                  ),
                  if (product.bestseller)
                    Positioned(
                      top: 16,
                      left: 16,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        decoration: BoxDecoration(
                          color: AppTheme.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          '🔥 Bestseller',
                          style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  if (product.discountPercent > 0)
                    Positioned(
                      top: 16,
                      right: 16,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.green.shade600,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '${product.discountPercent}% OFF',
                          style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppTheme.categoryUnselected,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(product.category,
                        style: AppTheme.caption.copyWith(color: AppTheme.primary)),
                  ),
                  const SizedBox(height: 8),
                  Text(product.name, style: AppTheme.heading),
                  const SizedBox(height: 8),
                  // Price row with MRP
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('\u20B9 ${product.price.toStringAsFixed(0)}',
                          style: AppTheme.price.copyWith(fontSize: 24)),
                      const SizedBox(width: 10),
                      if (product.mrp > product.price)
                        Text(
                          '\u20B9 ${product.mrp.toStringAsFixed(0)}',
                          style: TextStyle(
                            fontSize: 14,
                            color: AppTheme.textLight,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Rating and reviews
                  Row(
                    children: [
                      ...List.generate(5, (i) {
                        if (i < product.rating.floor()) {
                          return const Icon(Icons.star, color: Colors.amber, size: 16);
                        } else if (i < product.rating) {
                          return const Icon(Icons.star_half, color: Colors.amber, size: 16);
                        } else {
                          return const Icon(Icons.star_border, color: Colors.amber, size: 16);
                        }
                      }),
                      const SizedBox(width: 6),
                      Text('${product.rating}  (${product.reviewCount} reviews)',
                          style: AppTheme.caption.copyWith(color: AppTheme.textMedium)),
                    ],
                  ),
                  const SizedBox(height: 6),
                  // Stock & delivery
                  Row(
                    children: [
                      const Icon(Icons.local_shipping_outlined, size: 14, color: AppTheme.primary),
                      const SizedBox(width: 4),
                      Text('Delivered in ${product.deliveryDays} days  •  ',
                          style: AppTheme.caption),
                      Icon(Icons.inventory_2_outlined,
                          size: 14,
                          color: product.stock <= 5 ? Colors.red : Colors.green.shade700),
                      const SizedBox(width: 4),
                      Text(
                        product.stock <= 5 ? 'Only ${product.stock} left!' : 'In Stock',
                        style: AppTheme.caption.copyWith(
                          color: product.stock <= 5 ? Colors.red : Colors.green.shade700,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  const Divider(color: AppTheme.divider, height: 1),
                  const SizedBox(height: 14),
                  _InfoRow(icon: Icons.person_outline, label: 'Artisan', value: product.artisanName),
                  const SizedBox(height: 8),
                  _InfoRow(icon: Icons.location_on_outlined, label: 'Village', value: product.location),
                  const SizedBox(height: 8),
                  _InfoRow(icon: Icons.texture_outlined, label: 'Material', value: product.material),
                  const SizedBox(height: 14),
                  const Divider(color: AppTheme.divider, height: 1),
                  const SizedBox(height: 14),
                  const Text('About this Product', style: AppTheme.subheading),
                  const SizedBox(height: 6),
                  Text(product.description, style: AppTheme.body),
                  const SizedBox(height: 14),
                  // Highlights
                  if (product.highlights.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    const Text('Highlights', style: AppTheme.subheading),
                    const SizedBox(height: 8),
                    ...product.highlights.map(
                      (h) => Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.check_circle_outline,
                                size: 16, color: AppTheme.primary),
                            const SizedBox(width: 8),
                            Expanded(child: Text(h, style: AppTheme.body)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                  const SizedBox(height: 10),

                  AnimatedBuilder(
                    animation: cart,
                    builder: (context, _) {
                      final inCart = cart.isInCart(product.id);
                      return SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          style: AppTheme.primaryButtonStyle,
                          onPressed: () {
                            cart.addToCart(product);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text('${product.name} added to cart'),
                              backgroundColor: AppTheme.primaryDark,
                              duration: const Duration(seconds: 2),
                              behavior: SnackBarBehavior.floating,
                            ));
                          },
                          icon: Icon(inCart ? Icons.shopping_cart : Icons.add_shopping_cart, size: 20),
                          label: Text(inCart ? 'Add Again to Cart' : 'Add to Cart'),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 16),

                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: AppTheme.surface,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppTheme.divider, width: 1),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.favorite_outline, color: AppTheme.primary, size: 18),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'This product is handmade by a rural artisan. '
                            'Every purchase directly supports their livelihood.',
                            style: TextStyle(fontSize: 12, color: AppTheme.textMedium),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const _InfoRow({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 18, color: AppTheme.primary),
        const SizedBox(width: 8),
        Text('$label: ', style: const TextStyle(fontSize: 12, color: AppTheme.textLight)),
        Expanded(child: Text(value, style: AppTheme.subheading)),
      ],
    );
  }
}
