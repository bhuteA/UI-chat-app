import 'package:flutter/material.dart';
import 'package:ui_project/third_page.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10, // Set the background color to black
      body: _buildUI(),
      floatingActionButton: null,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildUI() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      // Add padding horizontally
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Text(
                'Take privacy with you\n'
                    'Be yourself with every message',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white, // Set text color to white
                ),
              ),
            ),
            Image.asset("assets/animations/fourth-removebg-preview.png"),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text(
                'Agree Terms & Privacy Policy',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white, // Set text color to white
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 18.0),
              width: MediaQuery
                  .of(context)
                  .size
                  .width * 0.6, // Adjust width as needed
              child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ThirdPage()),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white),
                  // Set the border color to white
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0), // Adjust padding as needed
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white, // Set text color to white
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.7,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}