import 'package:flutter/material.dart';
import '../app_theme.dart';

class ProductImage extends StatelessWidget {
  final String asset;
  final BoxFit fit;
  final double? width;
  final double? height;

  const ProductImage({
    super.key,
    required this.asset,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      asset,
      width: width,
      height: height,
      fit: fit,
      errorBuilder: (_, __, ___) => Container(
        width: width,
        height: height,
        color: AppTheme.surface,
        alignment: Alignment.center,
        child: const Icon(Icons.image_not_supported, color: AppTheme.textLight),
      ),
    );
  }
}
