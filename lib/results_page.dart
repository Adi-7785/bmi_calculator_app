import 'package:bmi_app/reusable_card.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'constants.dart';
import 'calculator_brain.dart';
import 'main.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.bmiResults,
    @required this.resultText,
    @required this.adviseText,
  });
  final String bmiResults;
  final String resultText;
  final String adviseText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Results',
                textAlign: TextAlign.left,
                style: kHeadingTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            // child: Container(
            //   decoration: BoxDecoration(
            //     color: kActiveCardColor,
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.spaceAround,
            //     children: [
            //       Text(
            //         'Normal',
            //         style: TextStyle(
            //           color: Colors.green,
            //           fontWeight: FontWeight.w500,
            //           fontSize: 35,
            //         ),
            //       ),
            //       Text(
            //         '24.3',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 100,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       Text(
            //         'Some Advise',
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 20,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResults,
                    style: kBMITextStyle,
                  ),
                  Text(
                    adviseText,
                    style: kAdviseTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTapped: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
                ),
              );
            },
            enterText: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
