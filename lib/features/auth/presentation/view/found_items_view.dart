import 'package:flutter/material.dart';

class FoundItemsPage extends StatelessWidget {
  const FoundItemsPage({Key? key}) : super(key: key);

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
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 27, 206, 200),
                      ),
                    ),
                    child: const Text(
                      'Found Items',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
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
                    const Icon(
                      Icons.check,
                      color: Colors.green,
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
                    const Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      // Add a floating action button at the middle
    );
  }
}
