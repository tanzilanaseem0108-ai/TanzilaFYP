import 'package:flutter/material.dart';
import '../utils/app_state.dart';
import 'login_screen.dart'; // Ye file hum agle step mein banayenge

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hello!", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Select your language / زبان کا انتخاب کریں", style: TextStyle(fontSize: 18)),
            SizedBox(height: 40),

            // English Button
            ElevatedButton.icon(
              icon: Text("🇺🇸", style: TextStyle(fontSize: 24)),
              label: Text("English (US)"),
              onPressed: () {
                AppState.setLanguage(false);
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),

            SizedBox(height: 20),

            // Urdu Button
            ElevatedButton.icon(
              icon: Text("🇵🇰", style: TextStyle(fontSize: 24)),
              label: Text("Urdu (اردو)"),
              onPressed: () {
                AppState.setLanguage(true);
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}