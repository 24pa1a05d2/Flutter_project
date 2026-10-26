// lib/screens/profile_screen.dart
import 'package:flutter/material.dart';
import '../app_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.background,
      appBar: AppBar(title: const Text('My Profile'), automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Profile Card
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: AppTheme.cardDecoration,
              child: Column(
                children: [
                  Container(
                    width: 70, height: 70,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(184, 92, 56, 0.15),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.person, size: 40, color: AppTheme.primary),
                  ),
                  const SizedBox(height: 12),
                  const Text('Priya Sharma', style: AppTheme.heading),
                  const SizedBox(height: 4),
                  const Text('priya.sharma@email.com', style: AppTheme.caption),
                  const SizedBox(height: 4),
                  const Text('+91 98765 43210', style: AppTheme.caption),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppTheme.categoryUnselected,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text('Mumbai, Maharashtra',
                        style: TextStyle(fontSize: 12, color: AppTheme.textMedium)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            const _SectionHeader(title: 'My Orders'),
            const SizedBox(height: 10),
            _MenuTile(
              icon: Icons.receipt_long_outlined, title: 'My Orders',
              subtitle: 'View your order history',
              onTap: () => _showComingSoon(context, 'My Orders'),
            ),
            const SizedBox(height: 8),
            _MenuTile(
              icon: Icons.location_on_outlined, title: 'Delivery Address',
              subtitle: 'Manage saved addresses',
              onTap: () => _showComingSoon(context, 'Delivery Address'),
            ),
            const SizedBox(height: 20),

            const _SectionHeader(title: 'About'),
            const SizedBox(height: 10),
            _MenuTile(
              icon: Icons.info_outline, title: 'About Us',
              subtitle: 'Learn about our mission',
              onTap: () => _showAboutUs(context),
            ),
            const SizedBox(height: 8),
            _MenuTile(
              icon: Icons.headset_mic_outlined, title: 'Help & Support',
              subtitle: 'Contact us for any issues',
              onTap: () => _showComingSoon(context, 'Help & Support'),
            ),
            const SizedBox(height: 20),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(184, 92, 56, 0.08),
                borderRadius: BorderRadius.all(Radius.circular(12)),
                border: Border.fromBorderSide(
                  BorderSide(color: Color.fromRGBO(184, 92, 56, 0.2))),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.spa, color: AppTheme.primary, size: 18),
                      SizedBox(width: 6),
                      Text('Our Promise', style: AppTheme.subheading),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Every product you buy on Rural Artisan is handcrafted by a skilled artisan '
                    'from rural India. Your purchase directly supports their family and helps '
                    'preserve centuries-old traditional crafts.',
                    style: AppTheme.body,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),

            const Text(
              'Rural Artisan v1.0.0  \u2022  Made with \u2764 for artisans',
              style: AppTheme.caption,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  void _showComingSoon(BuildContext context, String feature) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$feature coming soon!'),
      backgroundColor: AppTheme.primaryDark,
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
    ));
  }

  void _showAboutUs(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: AppTheme.background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        title: const Text('About Rural Artisan', style: AppTheme.heading),
        content: const Text(
          'Rural Artisan is a platform that connects skilled craftspeople from rural India '
          'directly with customers across the country.\n\n'
          'We showcase traditional handmade products including pottery, handloom textiles, '
          'wooden crafts, and woven baskets.\n\n'
          'Our goal is to ensure artisans receive fair prices for their craftsmanship and '
          'that their traditional skills are preserved for future generations.',
          style: AppTheme.body,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Close', style: TextStyle(color: AppTheme.primary)),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.centerLeft, child: Text(title, style: AppTheme.subheading));
  }
}

class _MenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _MenuTile({required this.icon, required this.title, required this.subtitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: AppTheme.cardDecoration,
        child: Row(
          children: [
            Container(
              width: 38, height: 38,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(184, 92, 56, 0.1),
                borderRadius: BorderRadius.all(Radius.circular(9)),
              ),
              child: Icon(icon, color: AppTheme.primary, size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppTheme.productName),
                  const SizedBox(height: 2),
                  Text(subtitle, style: AppTheme.caption),
                ],
              ),
            ),
            const Icon(Icons.chevron_right, color: AppTheme.textLight, size: 20),
          ],
        ),
      ),
    );
  }
}
