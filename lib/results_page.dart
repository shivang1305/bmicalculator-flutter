import 'file:///C:/Users/HP/AndroidStudioProjects/bmi_calculator/lib/constants/constants.dart';
import 'file:///C:/Users/HP/AndroidStudioProjects/bmi_calculator/lib/components/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'components/bottom_button.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretationString;

  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretationString});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                style: kResultLabelTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ReusableCard(
              c: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultLabelStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kResultNumberStyle,
                  ),
                  Text(
                    interpretationString,
                    textAlign: TextAlign.center,
                    style: kResultStringStyle,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => InputPage()));
            },
          )
        ],
      ),
    );
  }
}
