import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          '© 2024 Theater Reservation System',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
