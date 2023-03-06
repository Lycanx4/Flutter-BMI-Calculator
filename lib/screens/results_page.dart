import 'package:bmi_calculator/calculator_brain.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {

  CalculatorBrain calculatorBrain;


  ResultsPage(this.calculatorBrain, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    calculatorBrain.getBMIStatus().toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    calculatorBrain.calculateBMI(),
                    style: kBMITextStyle,
                  ),
                  Text(
                    calculatorBrain.getBMIAdvise(),
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  ),

                ],
              ),
            ),
          ),
          BottomButton(
              onTap: (){
                Navigator.pop(context);
              },
              title: 'RE-CALCULATE'
          ),
        ],
      ),
    );
  }
}
