import 'package:flutter/material.dart';

class AppTheme {
  static const Color background = Color(0xFFFAF3E0);
  static const Color surface = Color(0xFFF5ECD7);
  static const Color primary = Color(0xFFB85C38);
  static const Color primaryDark = Color(0xFF8B3E20);
  static const Color textDark = Color(0xFF3E2009);
  static const Color textMedium = Color(0xFF6B4226);
  static const Color textLight = Color(0xFF9E7456);
  static const Color divider = Color(0xFFD6C0A0);
  static const Color categorySelected = Color(0xFFB85C38);
  static const Color categoryUnselected = Color(0xFFEDE0C8);
  static const Color success = Color(0xFF2E7D4F);

  static const TextStyle appTitle = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w700,
    color: textDark,
    letterSpacing: 0.4,
  );
  static const TextStyle heading = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: textDark,
  );
  static const TextStyle subheading = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: textMedium,
  );
  static const TextStyle body = TextStyle(
    fontSize: 14,
    color: textMedium,
    height: 1.5,
  );
  static const TextStyle caption = TextStyle(fontSize: 12, color: textLight);
  static const TextStyle price = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: primary,
  );
  static const TextStyle productName = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.w600,
    color: textDark,
  );

  static ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: primary,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    elevation: 0,
  );

  static BoxDecoration cardDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(16),
    boxShadow: const [
      BoxShadow(
        color: Color.fromRGBO(101, 48, 17, 0.08),
        blurRadius: 10,
        offset: Offset(0, 3),
      ),
    ],
  );

  static ThemeData get themeData => ThemeData(
        scaffoldBackgroundColor: background,
        fontFamily: 'Roboto',
        colorScheme: const ColorScheme.light(
          primary: primary,
          secondary: primaryDark,
          surface: surface,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: background,
          foregroundColor: textDark,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: appTitle,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          selectedItemColor: primary,
          unselectedItemColor: textLight,
          selectedLabelStyle:
              TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontSize: 11),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
        ),
        useMaterial3: false,
      );
}
