import 'package:flutter/material.dart';

class Splacebg extends StatelessWidget {
  const Splacebg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/images/SplacePage.png', // Path to your image
        fit: BoxFit.cover,              // Ensures the image fills the screen
        width: double.infinity,         // Full width
        height: double.infinity,        // Full height
      ),
    );
  }
}
