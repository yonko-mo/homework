import 'package:flutter/material.dart';
import 'package:bmi_calculator/theme/bmi_colors.dart';
import 'package:bmi_calculator/theme/bmi_text_styles.dart';

class ResultAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final VoidCallback onBackPressed;

  const ResultAppBarWidget({super.key, required this.onBackPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: BmiColors.bgColor,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: onBackPressed,
      ),
      title: const Text('BMI RESULT', style: BmiTextStyles.appBarTitle),
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
