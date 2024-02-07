import 'package:flutter/material.dart';

class LaptopDetailsPage extends StatefulWidget {
  const LaptopDetailsPage({super.key});

  @override
  _LaptopDetailsPageState createState() => _LaptopDetailsPageState();
}

class _LaptopDetailsPageState extends State<LaptopDetailsPage> {
  bool isVerified = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        backgroundColor: const Color.fromARGB(255, 27, 206, 200),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Laptop',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Type: Dell Inspiron 3541',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/images/dell.jpg',
              height: 150,
            ),
            const SizedBox(height: 10),
            const Text(
              'Location: LR-15, Student Hub',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Phone Number: 9841123456', // Replace with the actual phone number
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVerified = true;
                });
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Verify'),
                  if (isVerified)
                    const Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
