import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String title;
  final String imagePath;

  const DetailScreen({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'Lobster',
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.pinkAccent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image of the cupcake with rounded corners and shadow
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    imagePath,
                    height: 350,
                    width: double.infinity,
                    fit: BoxFit.contain,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Title of the cupcake with a modern font and larger size
              Text(
                title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                  fontFamily: 'Lobster',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15),

              // Description of the cupcake with a friendly and modern tone
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                child: Text(
                  'Delight in the sweet, mouth-watering flavor of our $title cupcake. Each one is made with the finest ingredients, mixed with love, and baked to golden perfection. Experience a symphony of flavors in every bite!',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontFamily: 'DancingScript',
                    height: 1.6, // Better line height for readability
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30),

              // A call to action or more information section (Order Now button)
              ElevatedButton(
                onPressed: () {
                  // You can add navigation or functionality here (e.g., add to cart)
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pinkAccent,
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  shadowColor: Colors.pinkAccent.withOpacity(0.3),
                  elevation: 5,  // Adding some shadow for a modern look
                ),
                child: Text(
                  'Order Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,  // Adds spacing between letters for a more modern look
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
