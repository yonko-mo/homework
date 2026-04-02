import 'package:bmi_calculator/screens/bmi_calculator_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BmiCalculatorApp());
}

class BmiCalculatorApp extends StatelessWidget {
  const BmiCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BmiCalculatorPage(),
    );
  }
}
