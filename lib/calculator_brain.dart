import 'dart:math';
import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  //constructor
  CalculatorBrain({@required this.height, @required this.weight});

  //calculate and return bmi as string
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  //returns the string result
  String getResult() {
    if (_bmi >= 25)
      return 'OVERWEIGHT';
    else if (_bmi > 18.5)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  //return the interpretation in the form of string
  String getInterpretation() {
    if (_bmi >= 25)
      return 'You have higher than normal body weight. Try to exercise more.';
    else if (_bmi > 18.5)
      return 'You have a normal body weight. Good job!';
    else
      return 'You have less than normal body weight. You can eat a bit more.';
  }
}
