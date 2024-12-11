import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:immam/Pages/SplacePage/LoginPage/LoginPage.dart';

class Splacepage2 extends StatelessWidget {
  const Splacepage2({super.key});

  @override
  Widget build(BuildContext context) {
    // Define custom text properties for the title
    double fontSize = 50.0;
    FontWeight fontWeight = FontWeight.bold;
    Color textColor = Colors.white;
    double textShadowBlurRadius = 10.0;
    Color shadowColor = Colors.black.withOpacity(0.6);
    Offset shadowOffset = Offset(3.0, 3.0);

    // Button style properties
    TextStyle buttonTextStyle = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.white, backgroundColor: Colors.blue, // Text color
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0), // Button padding
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0), // Rounded corners
      ),
      elevation: 5.0, // Button shadow
    );

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Image.asset(
            'assets/images/pic1.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          // Column for text and buttons
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 450), // Space before the text
                // Text at the top
                Text(
                  'Who are you?',
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: textColor,
                    shadows: [
                      Shadow(
                        blurRadius: textShadowBlurRadius,
                        color: shadowColor,
                        offset: shadowOffset,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20), // Space between text and buttons

                // Button for Mosque Committee
                GestureDetector(
                  onTap: () {

                    Get.offAllNamed('/Login');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(
                      'Mosque Committee?',
                      style: buttonTextStyle,
                    ),
                  ),
                ),
                SizedBox(height: 10), // Space between buttons

                // Button for Imam
                GestureDetector(
                  onTap: () {

                    Get.offAllNamed('/Login');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Text(
                      'Immam?',
                      style: buttonTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
