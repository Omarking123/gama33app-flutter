import 'package:flutter/material.dart';
import 'my_orders_page.dart'; // Add this import for "My Orders"
import 'wishlist_page.dart'; // Add this import for "Wishlist"
import 'shipping_address_page.dart'; // Add this import for "Shipping Address"

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyProfilePage();
  }
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text("My Profile", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search, color: Colors.black),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 40, color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text("MarizAtef",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const Text("marizatef@mail.com",
                style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 20),
            buildBoxTile(
                "My orders", "Already have 12 orders", Icons.shopping_bag,
                onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyOrdersPage(),
                ),
              );
            }),
            buildBoxTile("Shipping addresses", "3 addresses", Icons.location_on,
                onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ShippingAddressPage(),
                ),
              );
            }),
            buildBoxTile("Payment methods", "Visa **34", Icons.credit_card,
                onTap: () {
              // Add navigation to Payment methods page (if implemented)
            }),
            buildBoxTile("Promocodes", "You have special promocodes",
                Icons.card_giftcard, onTap: () {
              // Add navigation to Promocodes page (if implemented)
            }),
            buildBoxTile("My reviews", "Reviews for 4 items", Icons.rate_review,
                onTap: () {
              // Add navigation to Reviews page (if implemented)
            }),
            buildBoxTile("Settings", "Notifications, password", Icons.settings,
                onTap: () {
              // Add navigation to Settings page (if implemented)
            }),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4, // Profile icon selected
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          switch (index) {
            case 0:
              Navigator.pushReplacementNamed(context, '/');
              break;
            case 1:
              // Navigate to cart screen if implemented
              break;
            case 2:
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WishlistPage()));
              break;
            case 3:
              // Navigate to shop screen if implemented
              break;
            case 4:
              // Already on Profile
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
    );
  }

  Widget buildBoxTile(String title, String subtitle, IconData icon,
      {required Function onTap}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => onTap(),
      ),
    );
  }
}
