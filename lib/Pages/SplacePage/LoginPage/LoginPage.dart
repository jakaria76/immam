import 'package:flutter/material.dart';
import 'package:immam/Pages/SplacePage/LoginPage/LoginPageBody/LoginPageBody.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fixed Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/pic2.png"), // Path to your background image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground with scrollable content
          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 200),
                    Loginpagebody(), // Your custom widget
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
