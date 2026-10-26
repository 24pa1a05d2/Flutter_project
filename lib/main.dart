import 'package:flutter/material.dart';
import 'app_state.dart';
import 'app_theme.dart';
import 'screens/main_navigation.dart';

void main() {
  runApp(const RuralArtisanApp());
}

class RuralArtisanApp extends StatefulWidget {
  const RuralArtisanApp({super.key});

  @override
  State<RuralArtisanApp> createState() => _RuralArtisanAppState();
}

class _RuralArtisanAppState extends State<RuralArtisanApp> {
  final ShopState _shop = ShopState();

  @override
  Widget build(BuildContext context) {
    return ShopScope(
      shop: _shop,
      child: MaterialApp(
        title: 'Rural Artisan',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeData,
        home: const MainNavigation(),
      ),
    );
  }
}

class ShopScope extends InheritedNotifier<ShopState> {
  const ShopScope({
    super.key,
    required ShopState shop,
    required super.child,
  }) : super(notifier: shop);

  static ShopState of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<ShopScope>();
    assert(scope != null, 'No ShopScope found in widget tree');
    return scope!.notifier!;
  }
}
