// lib/widgets/product_card.dart
// Reusable card widget displayed in the 2-column product grid on the Home screen.
// Shows product image, name, price, and artisan name. Taps open ProductDetailScreen.

import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../models/product.dart';
import '../screens/product_detail_screen.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductDetailScreen(product: product),
          ),
        );
      },
      child: Container(
        decoration: AppTheme.cardDecoration,
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ---- Product Image ----
            Expanded(
              flex: 3,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    product.imageAsset,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      color: AppTheme.surface,
                      child: const Center(
                        child: Icon(Icons.image_not_supported,
                            size: 36, color: AppTheme.textLight),
                      ),
                    ),
                  ),
                  if (product.bestseller)
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          color: AppTheme.primary,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          '🔥 Bestseller',
                          style: TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  if (product.discountPercent > 0)
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                        decoration: BoxDecoration(
                          color: Colors.green.shade600,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '${product.discountPercent}% OFF',
                          style: const TextStyle(color: Colors.white, fontSize: 9, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                ],
              ),
            ),

            // ---- Product Info ----
            Expanded(
              flex: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Product name (max 2 lines)
                    Text(
                      product.name,
                      style: AppTheme.productName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Rating row
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 11),
                            const SizedBox(width: 3),
                            Text(
                              '${product.rating} (${product.reviewCount})',
                              style: AppTheme.caption.copyWith(fontSize: 10),
                            ),
                          ],
                        ),
                        const SizedBox(height: 3),
                        // Price + MRP
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '\u20B9 ${product.price.toStringAsFixed(0)}',
                              style: AppTheme.price.copyWith(fontSize: 14),
                            ),
                            if (product.mrp > product.price) ...[
                              const SizedBox(width: 4),
                              Text(
                                '\u20B9 ${product.mrp.toStringAsFixed(0)}',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: AppTheme.textLight,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ],
                          ],
                        ),
                        const SizedBox(height: 2),
                        // Artisan name with a small icon
                        Row(
                          children: [
                            const Icon(Icons.person_outline,
                                size: 11, color: AppTheme.textLight),
                            const SizedBox(width: 3),
                            Expanded(
                              child: Text(
                                product.artisanName,
                                style: AppTheme.caption,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
