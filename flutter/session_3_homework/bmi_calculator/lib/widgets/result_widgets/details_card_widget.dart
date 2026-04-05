import 'package:flutter/material.dart';
import 'package:bmi_calculator/theme/bmi_colors.dart';
import 'package:bmi_calculator/theme/bmi_dimensions.dart';
import 'detail_row_widget.dart';

class DetailsCardWidget extends StatelessWidget {
  final String gender;
  final double height;
  final int weight;
  final int age;

  const DetailsCardWidget({
    super.key,
    required this.gender,
    required this.height,
    required this.weight,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: BmiDimensions.cardHorizontalMargin,
      ),
      padding: const EdgeInsets.all(BmiDimensions.cardHorizontalMargin),
      decoration: BoxDecoration(
        color: BmiColors.cardBgColor,
        borderRadius: BorderRadius.circular(BmiDimensions.cardBorderRadius),
        border: Border.all(
          color: BmiColors.accentColor,
          width: BmiDimensions.cardBorderWidth,
        ),
      ),
      child: Column(
        children: [
          DetailRowWidget(label: 'Gender', value: gender),
          const SizedBox(height: BmiDimensions.detailRowSpacing),
          DetailRowWidget(label: 'Height', value: '${height.round()} cm'),
          const SizedBox(height: BmiDimensions.detailRowSpacing),
          DetailRowWidget(label: 'Weight', value: '$weight kg'),
          const SizedBox(height: BmiDimensions.detailRowSpacing),
          DetailRowWidget(label: 'Age', value: '$age years'),
        ],
      ),
    );
  }
}
