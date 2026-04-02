import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:bmi_calculator/models/gender_enum.dart';
import 'package:bmi_calculator/screens/bmi_result_page.dart';
import 'package:bmi_calculator/widgets/calculate_section.dart';
import 'package:bmi_calculator/widgets/gender_selection_section.dart';
import 'package:bmi_calculator/widgets/height_section.dart';
import 'package:bmi_calculator/widgets/weight_age_section.dart';
import 'package:flutter/material.dart';

class BmiCalculatorPage extends StatefulWidget {
  const BmiCalculatorPage({super.key});

  @override
  State<BmiCalculatorPage> createState() => _BmiCalculatorPageState();
}

class _BmiCalculatorPageState extends State<BmiCalculatorPage> {
  double height = 174;
  int weight = 60;
  int age = 29;
  Gender gender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff04061d),
      appBar: AppBar(
        backgroundColor: const Color(0xff04061d),
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                GenderSelectionSection(
                  gender: gender,
                  onGenderChanged: (newGender) {
                    setState(() {
                      gender = newGender;
                    });
                  },
                ),
                const SizedBox(height: 30),
                HeightSection(
                  height: height,
                  onHeightChanged: (newHeight) {
                    setState(() {
                      height = newHeight;
                    });
                  },
                ),
                const SizedBox(height: 30),
                WeightAgeSection(
                  weight: weight,
                  age: age,
                  onWeightDecrement: () {
                    setState(() {
                      if (weight > 1) {
                        weight--;
                      }
                    });
                  },
                  onWeightIncrement: () {
                    setState(() {
                      weight++;
                    });
                  },
                  onAgeDecrement: () {
                    setState(() {
                      if (age > 1) {
                        age--;
                      }
                    });
                  },
                  onAgeIncrement: () {
                    setState(() {
                      age++;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          CalculateSection(
            height: height,
            weight: weight,
            age: age,
            gender: gender,
            onCalculate: () {
              final result = BmiCalculator.calculate(
                height: height,
                weight: weight,
              );

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BmiResultPage(
                    bmi: result.bmi,
                    status: result.status,
                    height: height,
                    weight: weight,
                    age: age,
                    gender: gender,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
