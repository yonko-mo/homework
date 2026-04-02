import 'package:flutter/material.dart';
import 'package:bmi_calculator/models/gender_enum.dart';

class CalculateSection extends StatelessWidget {
  final double height;
  final int weight;
  final int age;
  final Gender gender;
  final VoidCallback onCalculate;

  const CalculateSection({
    super.key,
    required this.height,
    required this.weight,
    required this.age,
    required this.gender,
    required this.onCalculate,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xffec0d54),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onCalculate,
        child: const Text(
          'CALCULATE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ),
    );
  }
}
