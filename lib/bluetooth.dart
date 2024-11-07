import 'package:flutter/material.dart';
import 'home_page.dart'; // Replace with actual path to home page file if different.

class BluetoothPage extends StatelessWidget {
  const BluetoothPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF6DD5FA), Color(0xFF2980B9)], // Example blue gradient
              ),
            ),
          ),
          // Page content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 60),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.bluetooth,
                  size: 40,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Connect your glove',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 16),
                child: Text(
                  'To securely connect this app to the glove, and take control of the glove, TURN YOUR BLUETOOTH ON.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              SizedBox(height: 40),
              // Navigation button to home page
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFF6DD5FA),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
