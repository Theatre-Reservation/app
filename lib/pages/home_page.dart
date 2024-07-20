import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'show_page.dart';
import 'booking_page.dart';
import 'profile_page.dart';
import 'settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<String> imgList = [
    'https://example.com/offer1.jpg',
    'https://example.com/offer2.jpg',
    'https://example.com/offer3.jpg',
  ];
  static final List<Widget> _pages = <Widget>[
    const HomeContent(),
    const ShowPage(),
    const BookingPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theatre Reservation'),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_outlined),
            label: 'Shows',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Booking',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeContentState createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  final List<String> imgList = [
    'https://example.com/offer1.jpg',
    'https://example.com/offer2.jpg',
    'https://example.com/offer3.jpg',
  ];

  final List<String> genres = ['Action', 'Comedy', 'Drama'];
  late String selectedGenre = '';
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(height: 200.0, autoPlay: true),
            items: imgList
                .map((item) => Container(
                      child: Center(
                        child:
                            Image.network(item, fit: BoxFit.cover, width: 1000),
                      ),
                    ))
                .toList(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search for shows...',
                prefixIcon: const Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 10.0,
              children: genres
                  .map((genre) => FilterChip(
                        label: Text(genre),
                        selected: selectedGenre == genre,
                        onSelected: (bool selected) {
                          setState(() {
                            selectedGenre = (selected ? genre : null)!;
                          });
                        },
                      ))
                  .toList(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                MovieCard('Movie 1', 'https://example.com/movie1.jpg'),
                MovieCard('Movie 2', 'https://example.com/movie2.jpg'),
                MovieCard('Movie 3', 'https://example.com/movie3.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MovieCard extends StatelessWidget {
  final String title;
  final String imageUrl;

  const MovieCard(this.title, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(imageUrl),
        title: Text(title),
        trailing: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
