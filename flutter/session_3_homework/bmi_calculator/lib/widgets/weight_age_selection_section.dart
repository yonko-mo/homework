import 'package:bmi_calculator/widgets/age_item.dart';
import 'package:bmi_calculator/widgets/weight_item.dart';
import 'package:flutter/material.dart';

class WeightAgeSelectionSection extends StatelessWidget {
  final GlobalKey<WeightItemState>? weightKey;
  final GlobalKey<AgeItemState>? ageKey;

  const WeightAgeSelectionSection({super.key, this.weightKey, this.ageKey});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: WeightItem(key: weightKey)),
        const SizedBox(width: 32),
        Expanded(child: AgeItem(key: ageKey)),
      ],
    );
  }
}
