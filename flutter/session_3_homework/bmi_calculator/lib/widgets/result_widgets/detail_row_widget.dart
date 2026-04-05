import 'package:flutter/material.dart';
import 'package:bmi_calculator/theme/bmi_text_styles.dart';

class DetailRowWidget extends StatelessWidget {
  final String label;
  final String value;

  const DetailRowWidget({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: BmiTextStyles.detailLabel),
        Text(value, style: BmiTextStyles.detailValue),
      ],
    );
  }
}
