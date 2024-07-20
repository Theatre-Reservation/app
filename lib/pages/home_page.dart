import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/components/common/header.dart';
// import 'package:app/components/common/footer.dart';
import 'package:app/providers/theme_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Header(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Center(
              child: Text(
              'Welcome to the Theater Reservation',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
              },
              child: const Text('Toggle Theme'),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: const Footer(),
    );
  }
}
