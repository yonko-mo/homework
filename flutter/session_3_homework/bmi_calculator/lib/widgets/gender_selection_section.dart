import 'package:flutter/material.dart';
import 'package:bmi_calculator/models/gender_enum.dart';
import 'gender_item.dart';

class GenderSelectionSection extends StatelessWidget {
  final Gender gender;
  final ValueChanged<Gender> onGenderChanged;

  const GenderSelectionSection({
    super.key,
    required this.gender,
    required this.onGenderChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: GenderItem(
            onPressed: () => onGenderChanged(Gender.male),
            label: 'MALE',
            icon: Icons.male,
            isSelected: gender == Gender.male,
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: GenderItem(
            onPressed: () => onGenderChanged(Gender.female),
            label: 'FEMALE',
            icon: Icons.female,
            isSelected: gender == Gender.female,
          ),
        ),
      ],
    );
  }
}
