import 'package:bmi_calculator/models/bmi_model.dart';
import 'package:bmi_calculator/screens/bmi_result_screen.dart';
import 'package:bmi_calculator/widgets/calculate_button.dart';
import 'package:bmi_calculator/widgets/gender_selection_section.dart';
import 'package:bmi_calculator/widgets/height_selection_section.dart';
import 'package:bmi_calculator/widgets/age_item.dart';
import 'package:bmi_calculator/widgets/weight_item.dart';
import 'package:bmi_calculator/widgets/weight_age_selection_section.dart';
import 'package:flutter/material.dart';

class BmiCalculatorScreen extends StatelessWidget {
  BmiCalculatorScreen({super.key});

  final GlobalKey<GenderSelectionSectionState> _genderKey =
      GlobalKey<GenderSelectionSectionState>();
  final GlobalKey<HeightSelectionSectionState> _heightKey =
      GlobalKey<HeightSelectionSectionState>();
  final GlobalKey<WeightItemState> _weightKey = GlobalKey<WeightItemState>();
  final GlobalKey<AgeItemState> _ageKey = GlobalKey<AgeItemState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(child: GenderSelectionSection(key: _genderKey)),
              const SizedBox(height: 16),
              Expanded(child: HeightSelectionSection(key: _heightKey)),
              const SizedBox(height: 16),
              Expanded(
                child: WeightAgeSelectionSection(
                  weightKey: _weightKey,
                  ageKey: _ageKey,
                ),
              ),
              const SizedBox(height: 16),
              CalculateButton(
                height: _heightKey.currentState?.getHeight() ?? 174,
                weight: _weightKey.currentState?.getWeight() ?? 60,
                age: _ageKey.currentState?.getAge() ?? 29,
                onCalculate: () {
                  final gender = _genderKey.currentState?.getGender() ?? 'Male';
                  final height = _heightKey.currentState?.getHeight() ?? 174;
                  final weight = _weightKey.currentState?.getWeight() ?? 60;
                  final age = _ageKey.currentState?.getAge() ?? 29;

                  final result = BmiCalculator.calculate(
                    height: height,
                    weight: weight,
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BmiResultScreen(
                        gender: gender,
                        bmi: result.bmi,
                        status: result.status,
                        height: height,
                        weight: weight,
                        age: age,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
