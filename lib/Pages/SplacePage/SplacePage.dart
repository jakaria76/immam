import 'package:flutter/material.dart';
import 'SplaceWidget/SplaceBG.dart'; // Assuming this file contains Splacebg widget
import 'SplacePage2/SplacePage2.dart';


class Splacepage extends StatefulWidget {
  const Splacepage({super.key});

  @override
  State<Splacepage> createState() => _SplacepageState();
}

class _SplacepageState extends State<Splacepage> {
  @override
  void initState() {
    super.initState();

    // Navigate to SplacePage2 after 5 seconds
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Splacepage2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Splacebg(),
        ],
      ),
    );
  }
}
