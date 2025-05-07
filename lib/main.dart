import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'profile_page.dart';
import 'my_orders_page.dart'; // Import the updated MyOrdersPage
import 'wishlist_page.dart';
import 'shipping_address_page.dart';
import 'product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/profile': (context) => const ProfilePage(),
        '/my_orders': (context) =>
            const MyOrdersPage(), // Use the updated MyOrdersPage
        '/wishlist': (context) => const WishlistPage(),
        '/shipping_address': (context) => const ShippingAddressPage(),
        '/product': (context) => const ProductPage(),
      },
    );
  }
}
