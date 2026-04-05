import 'package:flutter/material.dart';
import 'package:bmi_calculator/theme/bmi_colors.dart';
import 'package:bmi_calculator/theme/bmi_dimensions.dart';
import 'package:bmi_calculator/theme/bmi_text_styles.dart';

class BmiDisplayWidget extends StatelessWidget {
  final double bmi;
  final String status;

  const BmiDisplayWidget({super.key, required this.bmi, required this.status});

  @override
  Widget build(BuildContext context) {
    final statusColor = BmiColors.getStatusColor(status);

    return Container(
      padding: const EdgeInsets.all(BmiDimensions.bmiCircleSize),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: statusColor,
          width: BmiDimensions.bmiCircleBorderWidth,
        ),
      ),
      child: Text(
        bmi.toStringAsFixed(1),
        style: BmiTextStyles.bmiValue.copyWith(color: statusColor),
      ),
    );
  }
}
