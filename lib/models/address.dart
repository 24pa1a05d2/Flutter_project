class Address {
  final String id;
  final String label;
  final String fullName;
  final String phone;
  final String line1;
  final String line2;
  final String city;
  final String state;
  final String pincode;
  bool isDefault;

  Address({
    required this.id,
    required this.label,
    required this.fullName,
    required this.phone,
    required this.line1,
    this.line2 = '',
    required this.city,
    required this.state,
    required this.pincode,
    this.isDefault = false,
  });

  String get summary =>
      '$line1${line2.isNotEmpty ? ', $line2' : ''}, $city, $state — $pincode';
}
