import 'package:flutter/material.dart';

class HeightSection extends StatelessWidget {
  final double height;
  final void Function(double) onHeightChanged;

  const HeightSection({
    super.key,
    required this.height,
    required this.onHeightChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        color: const Color(0xff1d1e33),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(color: Color(0xff93969e), fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '${height.round()}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'cm',
                style: TextStyle(color: Color(0xff8b8d9b), fontSize: 20),
              ),
            ],
          ),
          const SizedBox(height: 5),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackHeight: 3, // سمك الخط
              activeTrackColor: Colors.white,
              inactiveTrackColor: const Color(0xff8d8e98),
              overlayShape: SliderComponentShape.noOverlay,
              thumbColor: const Color(0xffec0d54),
              thumbShape: const RoundSliderThumbShape(
                enabledThumbRadius: 15, // حجم الدائرة
              ),
            ),
            child: Slider(
              value: height,
              min: 100,
              max: 220,
              onChanged: onHeightChanged,
            ),
          ),
        ],
      ),
    );
  }
}
