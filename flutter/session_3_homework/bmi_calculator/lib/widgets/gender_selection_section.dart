import 'package:flutter/material.dart';
import 'gender_item.dart';

class GenderSelectionSection extends StatefulWidget {
  const GenderSelectionSection({super.key});

  @override
  State<GenderSelectionSection> createState() => GenderSelectionSectionState();
}

class GenderSelectionSectionState extends State<GenderSelectionSection> {
  final Color _selectedColor = const Color(0xff090b24);
  final Color _unselectedColor = const Color(0xff17172f);

  String _gender = 'Male';

  String getGender() => _gender;

  @override
  Widget build(BuildContext context) {
    final bool isMaleSelected = _gender == 'Male';

    return Row(
      children: [
        Expanded(
          child: GenderItem(
            onTap: () {
              setState(() {
                _gender = 'Male';
              });
            },
            color: isMaleSelected ? _selectedColor : _unselectedColor,
            icon: Icons.male,
            label: 'MALE',
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: GenderItem(
            onTap: () {
              setState(() {
                _gender = 'Female';
              });
            },
            color: !isMaleSelected ? _selectedColor : _unselectedColor,
            icon: Icons.female,
            label: 'FEMALE',
          ),
        ),
      ],
    );
  }
}
