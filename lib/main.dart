import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(BoloApp());
}

class BoloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bolo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // Autistic bacho ke liye soft colors behtar hote hain
        scaffoldBackgroundColor: Color(0xFFF5F5F5),
      ),
      home: WelcomeScreen(),
    );
  }
}