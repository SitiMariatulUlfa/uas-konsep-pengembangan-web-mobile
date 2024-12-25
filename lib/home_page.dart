import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cupcake Bakery',
          style: TextStyle(fontFamily: 'DancingScript', fontSize: 28),
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent, // Background color of the AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Welcome to Cupcake Bakery!',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
                fontFamily: 'Lobster',
              ),
            ),
            SizedBox(height: 25),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                children: [
                  CupcakeCard(
                    imagePath: 'cupcake-blue.png',
                    title: 'Chocolate Bliss',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(title: 'Chocolate Bliss', imagePath: 'cupcake-blue.png'),
                        ),
                      );
                    },
                  ),
                  CupcakeCard(
                    imagePath: 'cupcake-white.png',
                    title: 'Vanilla Dream',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(title: 'Vanilla Dream', imagePath: 'cupcake-white.png'),
                        ),
                      );
                    },
                  ),
                  CupcakeCard(
                    imagePath: 'cupcake-red.png',
                    title: 'Red Velvet',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(title: 'Red Velvet', imagePath: 'cupcake-red.png'),
                        ),
                      );
                    },
                  ),
                  CupcakeCard(
                    imagePath: 'cupcake-pink.png',
                    title: 'Strawberry Delight',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailScreen(title: 'Strawberry Delight', imagePath: 'cupcake-pink.png'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CupcakeCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final VoidCallback onTap;

  const CupcakeCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.pink.withOpacity(0.4), // Subtle pink line
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Card(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent,
                    fontFamily: 'DancingScript',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
