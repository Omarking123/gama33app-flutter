import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: 'wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Profile'),
        ],
      ),
      appBar: AppBar(
        leading: BackButton(),
        title: const Text("Product Page"),
        backgroundColor: Colors.white, // Keep the app bar blue
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section
            Row(
              children: [
                Column(
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Image.asset('assets/images/laptop.jpg',
                          width: 50, height: 50, fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Image.asset('assets/images/laptop.jpg',
                      height: 250, fit: BoxFit.cover),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Product name and price
            const Text('Product name',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text('LE 54.98',
                style: TextStyle(fontSize: 22, color: Colors.black87)),
            const SizedBox(height: 5),

            // Rating and reviews
            Row(
              children: const [
                Icon(Icons.star, color: Colors.amber, size: 20),
                Text('4.0 (32 reviews)', style: TextStyle(fontSize: 14)),
              ],
            ),
            const SizedBox(height: 10),

            // Product description
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),

            // Features
            const Text('• Feature 1\n• Feature 2\n• Feature 3',
                style: TextStyle(fontSize: 16)),
            const SizedBox(height: 15),

            // Quantity selector and buttons
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_circle_outline)),
                const Text("1", style: TextStyle(fontSize: 18)),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle_outline)),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                        255, 1, 78, 142), // Blue color for Add to Cart button
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 10),
                  ),
                  child: const Text("Add to Cart"),
                ),
              ],
            ),
            const SizedBox(height: 10),

            // Buy Now button centered
            Center(
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.blue),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 12),
                ),
                child: const Text(
                  "Buy Now",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Shipping information
            const Text("Free shipping on all orders over LE 5000"),
            const SizedBox(height: 5),
            const Text("Delivers in: 3-7 Working Days",
                style: TextStyle(decoration: TextDecoration.underline)),
          ],
        ),
      ),
    );
  }
}
