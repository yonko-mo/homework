import 'package:flutter/material.dart';
import 'package:bmi_calculator/theme/bmi_colors.dart';
import 'package:bmi_calculator/theme/bmi_dimensions.dart';
import 'package:bmi_calculator/widgets/result_widgets/bmi_display_widget.dart';
import 'package:bmi_calculator/widgets/result_widgets/status_text_widget.dart';
import 'package:bmi_calculator/widgets/result_widgets/details_card_widget.dart';
import 'package:bmi_calculator/widgets/result_widgets/back_button_widget.dart';
import 'package:bmi_calculator/widgets/result_widgets/result_app_bar_widget.dart';

class BmiResultPage extends StatelessWidget {
  final String gender;
  final double bmi;
  final String status;
  final double height;
  final int weight;
  final int age;

  const BmiResultPage({
    super.key,
    required this.gender,
    required this.bmi,
    required this.status,
    required this.height,
    required this.weight,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BmiColors.bgColor,
      appBar: ResultAppBarWidget(onBackPressed: () => Navigator.pop(context)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BmiDisplayWidget(bmi: bmi, status: status),
            const SizedBox(height: BmiDimensions.mediumSpacing),
            StatusTextWidget(status: status),
            const SizedBox(height: BmiDimensions.sectionSpacing),
            DetailsCardWidget(
              gender: gender,
              height: height,
              weight: weight,
              age: age,
            ),
            const SizedBox(height: BmiDimensions.sectionSpacing),
            BackButtonWidget(onPressed: () => Navigator.pop(context)),
          ],
        ),
      ),
    );
  }
}
