import 'package:flutter/material.dart';
import '../utils/app_state.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String selectedRole = 'Parent'; // Default role

  @override
  Widget build(BuildContext context) {
    bool isUrdu = AppState.isUrdu;

    return Scaffold(
      appBar: AppBar(title: Text(isUrdu ? "رجسٹریشن" : "Registration")),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              isUrdu ? "آپ کون ہیں؟" : "Who are you?",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            // Role Selection Dropdown
            DropdownButton<String>(
              value: selectedRole,
              isExpanded: true,
              items: ['Parent', 'Therapist'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  selectedRole = newValue!;
                });
              },
            ),

            SizedBox(height: 20),

            // Input Fields
            TextField(decoration: InputDecoration(labelText: isUrdu ? "نام" : "Name")),
            TextField(decoration: InputDecoration(labelText: isUrdu ? "ای میل" : "Email")),
            TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: isUrdu ? "پاس ورڈ" : "Password")
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                // Yahan hum Parents ke liye 'Add Child' wali logic shuru karenge
              },
              child: Text(isUrdu ? "رجسٹر کریں" : "Register"),
            ),
          ],
        ),
      ),
    );
  }
}