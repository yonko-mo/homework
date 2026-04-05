import 'package:flutter/material.dart';
import 'package:bmi_calculator/theme/bmi_colors.dart';
import 'package:bmi_calculator/theme/bmi_text_styles.dart';

class StatusTextWidget extends StatelessWidget {
  final String status;

  const StatusTextWidget({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final statusColor = BmiColors.getStatusColor(status);

    return Text(
      status,
      style: BmiTextStyles.statusText.copyWith(color: statusColor),
    );
  }
}
