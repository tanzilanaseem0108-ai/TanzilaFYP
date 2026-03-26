import 'package:bolo/register_screen.dart';
import 'package:flutter/material.dart';
import '../utils/app_state.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isUrdu = AppState.isUrdu;

    return Scaffold(
      appBar: AppBar(title: Text(isUrdu ? "لاگ ان" : "Login")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: isUrdu ? "ای میل" : "Email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: isUrdu ? "پاس ورڈ" : "Password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
              },
              child: Text(isUrdu ? "لاگ ان کریں" : "Login"),
            ),
            TextButton(
              onPressed: () {
                // Sign Up screen ka link yahan ayega
              },
              child: Text(isUrdu ? "رجسٹر کریں" : "Sign Up / Register"),
            ),
          ],
        ),
      ),
    );
  }
}