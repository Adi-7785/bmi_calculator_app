import 'package:flutter/material.dart';
import 'input_page.dart';
import 'results_page.dart';
import 'calculator_brain.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0B0E23),
        scaffoldBackgroundColor: Color(0xFF0B0E23),
      ),
      home: InputPage(),
      // initialRoute: '/input',
      // routes: {
      //   '/input': (context) => InputPage(),
      //   '/result': (context) => ResultsPage(
      //     bmiResults: calc.getBMI,
      //     adviseText: calc.getAdvise,
      //     resultText: calc.getResults,
      //   ),
      // },
    );
  }
}
