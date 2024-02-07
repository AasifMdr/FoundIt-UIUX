import 'package:flutter/material.dart';

import 'found_items_view.dart';
import 'glasses_view.dart';
import 'laptop_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 224, 235, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 27, 206, 200),
        elevation: 0,
        title: const Text(
          'Welcome Back!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Add onPressed functionality for the notifications icon
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Wrap the body contents with SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(20.0), // Add desired padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Add onPressed functionality for "Lost Items" button
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 27, 206, 200),
                      ),
                    ),
                    child: const Text(
                      'Lost Items',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const FoundItemsPage()), // Replace FoundItemsPage with the actual page you want to navigate to
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 27, 206, 200),
                      ),
                    ),
                    child: const Text('Found Items'),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GlassesDetailsPage()),
                  );
                },
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20.0),
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Glasses',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Image.asset(
                        'assets/images/glasses.png',
                        height: 30,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Location: LR-1, Block A',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Phone Charger', // Item description
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Image.asset(
                          'assets/images/charger.jpg', // Path to your asset image
                          height: 40, // Adjust the image height as needed
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Location: Seminar Hall', // Location of the item
                          style: TextStyle(
                            fontSize: 14, // Adjust the font size as needed
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Already Claimed',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Helmet', // Item description
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Image.asset(
                          'assets/images/helmet.png', // Path to your asset image
                          height: 40, // Adjust the image height as needed
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Location: Basketball Court', // Location of the item
                          style: TextStyle(
                            fontSize: 14, // Adjust the font size as needed
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Already Claimed',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LaptopDetailsPage()),
                  );
                },
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Laptop', // Item description
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Image.asset(
                            'assets/images/dell.jpg', // Path to your asset image
                            height: 40, // Adjust the image height as needed
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Location: LR-15, Student Hub', // Location of the item
                            style: TextStyle(
                              fontSize: 14, // Adjust the font size as needed
                            ),
                          ),
                        ],
                      ),
                      const Text(
                        'Added',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // Add a floating action button at the middle
    );
  }
}
