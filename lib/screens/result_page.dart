import 'package:bmi_calculator/constant_vals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../components/my_container.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  String bmiResult;
  String resultText;
  String interpretationResult;

  ResultPage(
      {@required this.bmiResult,
      @required this.interpretationResult,
      @required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Your Result',
                  style: MyConstant.kbuttonLargeText,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: MyContainer(
                color: MyConstant.colorBoxInactive,
                childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      bmiResult.toUpperCase(),
                      style: MyConstant.kresultText,
                    ),
                    Text(
                      resultText.toUpperCase(),
                      style: MyConstant.kBMIText,
                    ),
                    Text(
                      interpretationResult,
                      style: MyConstant.lableTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              onPress: () {
                Navigator.pop(context);
              },
              text: 'RE-CALCULATE',
            ),
          ],
        ));
  }
}
