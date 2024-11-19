// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image.asset('assets/home.png'),
            Image.asset(
              'assets/home.jpg',
              width: 450,
              height: 400,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to the Home Screen!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'This is where your app journey begins.',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
