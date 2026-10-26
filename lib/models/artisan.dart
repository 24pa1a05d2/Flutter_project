class Artisan {
  final String id;
  final String name;
  final String craft;
  final String village;
  final String state;
  final String bio;
  final String imageAsset;

  const Artisan({
    required this.id,
    required this.name,
    required this.craft,
    required this.village,
    required this.state,
    required this.bio,
    required this.imageAsset,
  });

  String get location => '$village, $state';
}
