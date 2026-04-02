import 'package:flutter/material.dart';
import 'counter_card.dart';

class WeightAgeSection extends StatelessWidget {
  final int weight;
  final int age;
  final VoidCallback onWeightDecrement;
  final VoidCallback onWeightIncrement;
  final VoidCallback onAgeDecrement;
  final VoidCallback onAgeIncrement;

  const WeightAgeSection({
    super.key,
    required this.weight,
    required this.age,
    required this.onWeightDecrement,
    required this.onWeightIncrement,
    required this.onAgeDecrement,
    required this.onAgeIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: CounterCard(
            label: 'WEIGHT',
            value: weight,
            onDecrement: onWeightDecrement,
            onIncrement: onWeightIncrement,
          ),
        ),
        const SizedBox(width: 30),
        Expanded(
          child: CounterCard(
            label: 'AGE',
            value: age,
            onDecrement: onAgeDecrement,
            onIncrement: onAgeIncrement,
          ),
        ),
      ],
    );
  }
}
