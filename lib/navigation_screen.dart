import 'package:flutter/material.dart';
import 'create_advert_screen.dart';  // Assuming you have this file for creating adverts
import 'show_items_screen.dart';      // Assuming you have this file for showing items

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Define a common style for both buttons
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Adjusts the curvature of the button edges
        side: const BorderSide(color: Colors.black), // Adds a border around the button
      ),
      fixedSize: const Size(250, 50), // Sets a fixed width and height for both buttons
      padding: const EdgeInsets.symmetric(horizontal: 16), // Optional: Adjust padding if needed
      backgroundColor: const Color(0xFFE0E0E0), // Gray color background for the buttons
      // font size, font weight, and text color can be adjusted here
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      )
    );

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateNewAdvertScreen(),), // Navigate to the CreateNewAdvertScreen
                );
              },
              style: buttonStyle, // Apply the custom style
              child: const Text('Create a New Advert'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShowItemsScreen()),
                );
              },
              style: buttonStyle, // Apply the same custom style
              child: const Text('Show All Lost & Found Items'),
            ),
          ],
        ),
      ),
    );
  }
}
