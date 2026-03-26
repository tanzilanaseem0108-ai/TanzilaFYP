import 'package:flutter/material.dart';

class AppState {
  // Shuru mein English hogi
  static bool isUrdu = false;

  // Language change karne ka function
  static void setLanguage(bool value) {
    isUrdu = value;
  }
}