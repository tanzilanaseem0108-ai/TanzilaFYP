import 'package:flutter/material.dart';
import '../utils/app_state.dart';

class ParentDashboard extends StatefulWidget {
  @override
  _ParentDashboardState createState() => _ParentDashboardState();
}

class _ParentDashboardState extends State<ParentDashboard> {
  @override
  Widget build(BuildContext context) {
    bool isUrdu = AppState.isUrdu;

    return Scaffold(
      appBar: AppBar(
        title: Text(isUrdu ? "والدین کا ڈیش بورڈ" : "Parent Dashboard"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section 1: Add Child
            _buildSectionTitle(isUrdu ? "بچہ شامل کریں" : "Add Child"),
            _buildTextField(isUrdu ? "بچے کا نام" : "Child Name"),
            _buildTextField(isUrdu ? "عمر" : "Age"),
            _buildTextField(isUrdu ? "بچے کا ای میل" : "Child Email"),
            _buildTextField(isUrdu ? "پاس ورڈ" : "Password", isObscure: true),

            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {},
                child: Text(isUrdu ? "بچہ محفوظ کریں" : "Save Child Details")
            ),

            Divider(height: 40, thickness: 2),

            // Section 2: Add Therapist
            _buildSectionTitle(isUrdu ? "تھراپسٹ شامل کریں" : "Add Therapist"),
            Text(isUrdu ? "دستیاب تھراپسٹ منتخب کریں:" : "Select Active Therapist:"),

            // Ye wo dropdown hoga jisme sirf registered therapists show honge
            DropdownButton<String>(
              isExpanded: true,
              hint: Text(isUrdu ? "تھراپسٹ منتخب کریں" : "Select Therapist"),
              items: ["Dr. Ahmed (Active)", "Dr. Sara (Active)"].map((String value) {
                return DropdownMenuItem<String>(value: value, child: Text(value));
              }).toList(),
              onChanged: (val) {},
            ),

            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green, foregroundColor: Colors.white),
                onPressed: () {
                  // Yahan se user categories wali home screen par jayega
                },
                child: Text(isUrdu ? "ہوم اسکرین پر جائیں" : "Go to Home Screen"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Chota sa helper function design ko saaf rakhne ke liye
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
    );
  }

  Widget _buildTextField(String label, {bool isObscure = false}) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: TextField(
        obscureText: isObscure,
        decoration: InputDecoration(labelText: label, border: OutlineInputBorder()),
      ),
    );
  }
}