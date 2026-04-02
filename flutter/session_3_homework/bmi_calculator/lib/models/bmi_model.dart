class BmiResult {
  final double bmi;
  final String status;

  BmiResult({required this.bmi, required this.status});
}

class BmiCalculator {
  static BmiResult calculate({required double height, required int weight}) {
    double heightInMeters = height / 100;
    double bmi = weight / (heightInMeters * heightInMeters);
    String status = _getStatus(bmi);
    return BmiResult(bmi: bmi, status: status);
  }

  static String _getStatus(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi < 25) {
      return 'Normal Weight';
    } else if (bmi >= 25 && bmi < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }
}
