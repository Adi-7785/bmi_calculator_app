import 'dart:math';
import 'main.dart';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.weight, this.height});
//no input is required for this func. as class takes it. Math library required to calculate power.
  String getBMI() {
    _bmi = (weight) / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

// initially I was getting an for using bmi in below func. So i made it a private property.
  String getResults() {
    if (_bmi < 18.5) {
      return 'UnderWeight';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Normal';
    } else if (_bmi <= 30 && _bmi >= 25) {
      return 'OverWeight';
    } else {
      return 'Obese';
    }
  }

  String getAdvise() {
    if (_bmi < 18.5) {
      return 'Eat more, workout less!';
    } else if (_bmi >= 18.5 && _bmi <= 24.9) {
      return 'Live the same for rest of your life';
    } else if (_bmi <= 30 && _bmi >= 25) {
      return 'Run fatso, Run!';
    } else {
      return 'Motey/Motti go climb a mountain.';
    }
  }
}
