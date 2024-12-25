import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cupcake Bakery',
      theme: ThemeData(
        primarySwatch: Colors.pink, // Primary color for the app
        hintColor: Colors.pinkAccent, // Accent color for buttons, etc.
        textTheme: TextTheme(
          displayLarge: TextStyle(fontFamily: 'Lobster', fontSize: 28, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
          displayMedium: TextStyle(fontFamily: 'Lobster', fontSize: 32, fontWeight: FontWeight.bold, color: Colors.pinkAccent),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // Button theme
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.pinkAccent, // Pink color for buttons
        ),
      ),
      home: HomePage(),
    );
  }
}
