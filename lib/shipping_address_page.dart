import 'package:flutter/material.dart';

class ShippingAddressPage extends StatefulWidget {
  const ShippingAddressPage({Key? key}) : super(key: key);

  @override
  State<ShippingAddressPage> createState() => _ShippingAddressPageState();
}

class _ShippingAddressPageState extends State<ShippingAddressPage> {
  int? _selectedAddressIndex;

  final List<Map<String, String>> _addresses = [
    {
      'name': 'Home Address',
      'details':
          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magn.',
    },
    {
      'name': 'Example Address',
      'details':
          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magn.',
    },
    {
      'name': 'Example Address',
      'details':
          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magn.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0),
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          'Shipping Addresses',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ..._addresses.asMap().entries.map((entry) {
                  final int index = entry.key;
                  final Map<String, String> address = entry.value;
                  return Card(
                    margin: const EdgeInsets.only(bottom: 12.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                address['name']!,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  // TODO: Implement edit functionality
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.blue,
                                  padding: EdgeInsets.zero,
                                  minimumSize: const Size(40, 30),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: const Text('Edit'),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            address['details']!,
                            style: const TextStyle(color: Colors.grey),
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            children: [
                              Checkbox(
                                value: _selectedAddressIndex == index,
                                onChanged: (bool? value) {
                                  setState(() {
                                    if (value == true) {
                                      _selectedAddressIndex = index;
                                    } else if (_selectedAddressIndex == index) {
                                      _selectedAddressIndex = null;
                                    }
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                              const Text('Use as the shipping address'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
                const SizedBox(height: 72.0), // To accommodate the Next button
              ],
            ),
          ),
          Positioned(
            left: 16.0,
            right: 16.0,
            bottom: 16.0,
            child: ElevatedButton(
              onPressed: _selectedAddressIndex != null
                  ? () {
                      // TODO: Implement next action
                      print('Selected address index: $_selectedAddressIndex');
                    }
                  : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ),
          Positioned(
            bottom:
                80.0 + 16.0 + 16.0, // Adjust based on button height and padding
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                // TODO: Implement add new address functionality
                print('Add new address');
              },
              backgroundColor: const Color.fromARGB(255, 79, 140, 190),
              child: const Icon(Icons.add, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
