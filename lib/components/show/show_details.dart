import 'package:flutter/material.dart';

class ShowDetails extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const ShowDetails(
      {super.key, required this.title, required this.description, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(imageUrl),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(description),
            ),
          ],
        ),
      ),
    );
  }
}
