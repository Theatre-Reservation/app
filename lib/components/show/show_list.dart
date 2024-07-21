import 'package:flutter/material.dart';
import 'show_details.dart';

class ShowList extends StatelessWidget {
  final List<Map<String, String>> shows = [
    {
      'title': 'Show 1',
      'description': 'Description for Show 1',
      'imageUrl': 'https://example.com/show1.jpg',
    },
    {
      'title': 'Show 2',
      'description': 'Description for Show 2',
      'imageUrl': 'https://example.com/show2.jpg',
    },
    {
      'title': 'Show 3',
      'description': 'Description for Show 3',
      'imageUrl': 'https://example.com/show3.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show List'),
      ),
      body: ListView.builder(
        itemCount: shows.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.network(shows[index]['imageUrl']!),
              title: Text(shows[index]['title']!),
              subtitle: Text(shows[index]['description']!),
              trailing: Icon(Icons.keyboard_arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShowDetails(
                      title: shows[index]['title']!,
                      description: shows[index]['description']!,
                      imageUrl: shows[index]['imageUrl']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
