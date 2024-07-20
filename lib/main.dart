import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/theme_provider.dart';
import 'pages/home_page.dart';
// import 'pages/show_page.dart';
// import 'pages/booking_page.dart';
// import 'pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            title: 'Theatre Reservation System',
            theme: themeProvider.isDarkMode
                ? ThemeData.dark().copyWith(primaryColor: Colors.blueGrey)
                : ThemeData.light().copyWith(primaryColor: Colors.blue),
            home: const HomePage(),
            // routes: {
            //   '/home': (context) => HomePage(),
            //   '/shows': (context) => const ShowPage(),
            //   '/booking': (context) => const BookingPage(),
            //   '/profile': (context) => const ProfilePage(),
            // },
          );
        },
      ),
    );
  }
}

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _selectedIndex = 0;

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//     switch (index) {
//       case 0:
//         Navigator.pushNamed(context, '/home');
//         break;
//       case 1:
//         Navigator.pushNamed(context, '/shows');
//         break;
//       case 2:
//         Navigator.pushNamed(context, '/booking');
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: const [
//           HomePage(),
//           ShowPage(),
//           BookingPage(),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.movie), label: 'Shows'),
//           BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Booking'),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => Navigator.pushNamed(context, '/profile'),
//         child: const Icon(Icons.person),
//       ),
//     );
//   }
// }
