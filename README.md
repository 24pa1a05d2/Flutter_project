# Rural Artisan E-Commerce

A Flutter mobile application that helps rural Indian artisans showcase and sell
their traditional handmade products directly to customers.

## Project Structure

```
lib/
  main.dart                    # App entry point + CartProviderScope
  app_theme.dart               # Colors, text styles, shared decorations
  cart_provider.dart           # Cart state management (ChangeNotifier)
  data/
    sample_products.dart       # Local sample product data (8 products)
  models/
    product.dart               # Product data model
    cart_item.dart             # Cart item model (product + quantity)
  screens/
    main_navigation.dart       # Bottom navigation bar (Home/Cart/Profile)
    home_screen.dart           # Product grid with search & category filter
    product_detail_screen.dart # Full product details + Add to Cart
    cart_screen.dart           # Cart items, quantity controls, Place Order
    profile_screen.dart        # Sample profile, My Orders, About Us
  widgets/
    product_card.dart          # Reusable product card for the grid
```

## Features

- **Home Screen**: Search bar, category chips (Pottery/Handloom/Wooden Crafts/Baskets),
  2-column product grid showing product image, name, price, and artisan name
- **Product Detail Screen**: Large image, artisan name, village, description, Add to Cart
- **Cart Screen**: Quantity +/- controls, item totals, grand total, Place Order dialog
- **Profile Screen**: Sample customer profile, My Orders, About Us dialog

## Design

- Background: Cream/off-white (#FAF3E0)
- Accent: Terracotta (#B85C38)
- Text: Deep brown (#3E2009)
- Rounded cards, consistent spacing, no excessive animations

## Setup & Run

1. Install Flutter SDK from https://docs.flutter.dev/get-started/install
2. Add Flutter to your PATH
3. Open a terminal in this project folder
4. Run: `flutter pub get`
5. Connect a device or start an emulator
6. Run: `flutter run`

## Dependencies

Only Flutter SDK built-ins are used. No third-party state management libraries.
Cart state is managed with Flutter`s built-in `ChangeNotifier` + `InheritedNotifier`.

## Sample Data

8 handmade products across 4 categories:
- Pottery: Blue Pottery Vase, Clay Diya Set
- Handloom: Pochampally Cotton Saree, Khadi Kurta
- Wooden Crafts: Carved Wooden Elephant, Wooden Serving Bowl
- Baskets: Bamboo Storage Basket, Cane Fruit Basket
