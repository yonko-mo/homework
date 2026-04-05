import 'package:flutter/material.dart';
import 'package:bmi_calculator/theme/bmi_colors.dart';
import 'package:bmi_calculator/theme/bmi_dimensions.dart';
import 'package:bmi_calculator/theme/bmi_text_styles.dart';

class BackButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const BackButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: BmiDimensions.buttonWidth,
      height: BmiDimensions.buttonHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: BmiColors.accentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(BmiDimensions.cardBorderRadius),
          ),
        ),
        onPressed: onPressed,
        child: const Text('BACK', style: BmiTextStyles.buttonText),
      ),
    );
  }
}
