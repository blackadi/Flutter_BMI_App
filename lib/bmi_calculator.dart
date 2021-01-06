import 'dart:math';

class BMICalculator {
  int height;
  int weight;
  double _bmi;
  BMICalculator({this.weight, this.height});

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi <= 18.5)
      return 'Underweight';
    else if (_bmi > 18.5 && _bmi <= 25.0) {
      return 'Normal Weight';
    } else if (_bmi > 25 && _bmi <= 30) {
      return 'OverWeight';
    } else
      return 'Obese';
  }

  String getInterpretation() {
    if (_bmi <= 18.5)
      return 'Your BMI Result is quite low, you should eat more!';
    else if (_bmi > 18.5 && _bmi <= 25.0) {
      return 'You have a normal body weight. Good job!';
    } else if (_bmi > 25 && _bmi <= 30) {
      return 'You have a higher than normal body weight. Try to work your ass more!';
    } else
      return 'High risk of developing heart disease, high blood pressure, stroke, diabetes';
  }
}
