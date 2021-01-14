import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/widgets/bottom_button.dart';
import 'package:bmi_calculator/widgets/card_background.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String bmiResult;
  final String textResult;
  final String interpretation;

  ResultScreen({
    @required this.bmiResult,
    @required this.textResult,
    @required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Your Result',
            style:
                TextStyle(color: Colors.black, fontFamily: 'Poppins-Regular'),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: EdgeInsets.only(top: 32.0),
              child: CardBackground(
                color: kCardBackgroundColor,
                cardChild: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Your BMI is:',
                        style: kLabelTextStyleBlack,
                      ),
                      Text(
                        bmiResult,
                        style: kBMITextStyle,
                      ),
                      Text(
                        textResult,
                        style: kResultTextStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(24.0, 0, 24.0, 24.0),
              child: Text(
                interpretation,
                style: kLabelTextStyleBlack,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(24.0, 0, 24.0, 0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BMI Categories:',
                      style: kLabelTextStyleBlackMedium,
                    ),
                    Text(
                      'Underweight =< 18.5 \nNormal = 18.5–24.9 \nOverweight > 25',
                      style: kLabelTextStyleBlack,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
                onTap: () {
                  Navigator.pop(context);
                },
                titleButton: 'Recalculate')
          ],
        ));
  }
}
