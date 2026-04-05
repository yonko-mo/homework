import 'package:flutter/material.dart';
import 'bmi_colors.dart';

class BmiTextStyles {
  static const TextStyle appBarTitle = TextStyle(
    color: Colors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle statusText = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bmiValue = TextStyle(
    fontSize: 72,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle detailLabel = TextStyle(
    color: Colors.white70,
    fontSize: 16,
  );

  static const TextStyle detailValue = TextStyle(
    color: BmiColors.accentColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle buttonText = TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.bold,
    letterSpacing: 1.2,
  );
}
