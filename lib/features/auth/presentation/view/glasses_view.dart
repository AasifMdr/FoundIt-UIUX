import 'package:flutter/material.dart';

class GlassesDetailsPage extends StatefulWidget {
  const GlassesDetailsPage({super.key});

  @override
  _GlassesDetailsPageState createState() => _GlassesDetailsPageState();
}

class _GlassesDetailsPageState extends State<GlassesDetailsPage> {
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
              'Glasses',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Type: Reading Glasses',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
              'assets/images/glasses.png',
              height: 150,
            ),
            const SizedBox(height: 10),
            const Text(
              'Location: LR-1, Block A',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Phone Number: 9813556778', // Replace with the actual phone number
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
