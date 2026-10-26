class Product {
  final String id;
  final String name;
  final double price;
  final double mrp;
  final String artisanName;
  final String artisanId;
  final String village;
  final String state;
  final String category;
  final String description;
  final String imageAsset;
  final double rating;
  final int reviewCount;
  final int stock;
  final String material;
  final List<String> highlights;
  final int deliveryDays;
  final bool bestseller;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.mrp,
    required this.artisanName,
    required this.artisanId,
    required this.village,
    required this.state,
    required this.category,
    required this.description,
    required this.imageAsset,
    required this.rating,
    required this.reviewCount,
    required this.stock,
    required this.material,
    required this.highlights,
    required this.deliveryDays,
    this.bestseller = false,
  });

  String get location => '$village, $state';

  int get discountPercent {
    if (mrp <= price) return 0;
    return (((mrp - price) / mrp) * 100).round();
  }
}
