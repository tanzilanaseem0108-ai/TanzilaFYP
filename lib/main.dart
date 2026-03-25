import 'package:flutter/material.dart';

void main() {
  runApp(const BoloApp());
}

class BoloApp extends StatelessWidget {
  const BoloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bolo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const LanguageSelectionScreen(), // App yahan se shuru hogi
    );
  }
}

// --- SCREEN 1: Language Selection ---
class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hello!",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.blueAccent),
                ),
                const Text("Select your language", style: TextStyle(fontSize: 18)),
                const Text("اپنی زبان منتخب کریں", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 40),

                // English Button
                _buildLanguageButton(
                  context,
                  flag: "🇺🇸",
                  label: "English (US)",
                  onTap: () {
                    // LINK WALA CODE YAHAN HAI:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BoloHomeScreen()));
                  },
                ),

                const SizedBox(height: 20),

                // Urdu Button
                _buildLanguageButton(
                  context,
                  flag: "🇵🇰",
                  label: "اردو (Urdu)",
                  onTap: () {
                    // LINK WALA CODE YAHAN BHI HAI:
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BoloHomeScreen()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageButton(BuildContext context, {required String flag, required String label, required VoidCallback onTap}) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade50,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15), side: const BorderSide(color: Colors.blueAccent)),
        ),
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(flag, style: const TextStyle(fontSize: 24)),
            const SizedBox(width: 15),
            Text(label, style: const TextStyle(fontSize: 18, color: Colors.black87)),
          ],
        ),
      ),
    );
  }
}

// --- SCREEN 2: 3x5 Grid (Home Screen) ---
class BoloHomeScreen extends StatelessWidget {
  const BoloHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> labels = ["Water", "Food", "Toilet", "Sleep", "Play", "Happy", "Sad", "Help", "Yes", "No", "Mom", "Dad", "School", "Medicine", "Home"];

    return Scaffold(
      appBar: AppBar(title: const Text("Bolo"), centerTitle: true, backgroundColor: Colors.blueAccent, foregroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisExtent: 120, // Button ki height fix karne ke liye
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
          ),
          itemCount: 15,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blueAccent),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.star, color: Colors.blueAccent), // Filhal dummy star icon
                  const SizedBox(height: 8),
                  Text(labels[index], style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}