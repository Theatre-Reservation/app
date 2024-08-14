import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode themeMode = ThemeMode.light;

  void changeThemeMode(bool useLightMode) {
    setState(() {
      themeMode = useLightMode
          ? ThemeMode.light //
          : ThemeMode.dark;
    });
  }

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Theatre Reservation System';



    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false, // Uncomment to remove Debug banner
      themeMode: themeMode,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: Home(
        changeTheme: changeThemeMode,
        appTitle: appTitle,
      ),
    );
  }
}
