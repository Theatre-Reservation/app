import 'package:flutter/material.dart';

class ShowSchedule extends StatelessWidget {
  final List<Map<String, String>> schedule = [
    {
      'date': '2024-07-21',
      'time': '7:00 PM',
      'show': 'Show 1',
    },
    {
      'date': '2024-07-22',
      'time': '8:00 PM',
      'show': 'Show 2',
    },
    {
      'date': '2024-07-23',
      'time': '9:00 PM',
      'show': 'Show 3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Schedule'),
      ),
      body: ListView.builder(
        itemCount: schedule.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(schedule[index]['show']!),
              subtitle: Text(
                  '${schedule[index]['date']} at ${schedule[index]['time']}'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
          );
        },
      ),
    );
  }
}
