import 'package:flutter/material.dart';

class BmiColors {
  // Background & UI
  static const Color bgColor = Color(0xff04061d);
  static const Color accentColor = Color(0xffec0d54);
  static const Color cardBgColor = Color(0xff1a1a2e);

  // Status colors
  static const Color statusUnderweight = Color(0xff00bfff);
  static const Color statusNormal = Color(0xff00ff00);
  static const Color statusOverweight = Color(0xffff8c00);
  static const Color statusObese = Color(0xffff0000);

  static const Map<String, Color> statusColors = {
    'Underweight': statusUnderweight,
    'Normal Weight': statusNormal,
    'Overweight': statusOverweight,
    'Obese': statusObese,
  };

  static Color getStatusColor(String status) {
    return statusColors[status] ?? statusObese;
  }
}
