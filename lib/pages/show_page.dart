import 'package:app/components/show/show_list.dart';
import 'package:app/components/show/show_schedule.dart';
import 'package:flutter/material.dart';

class ShowPage extends StatelessWidget {
  const ShowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShowList(),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => ShowList(),
          //       ),
          //     );
          //   },
          //   child: Text('Go to Show List'),
          // ),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => ShowSchedule(),
          //       ),
          //     );
          //   },
          //   child: Text('Go to Show Schedule'),
          // ),
          // SizedBox(height: 20),
          // ShowSchedule(),

        ],
      ),
    );
  }
}
