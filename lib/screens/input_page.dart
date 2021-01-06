import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../components/my_container.dart';
import '../constant_vals.dart';
import '../components/child_card.dart';
import '../components/incremental_card.dart';
import '../components/bottom_button.dart';
import '../bmi_calculator.dart';
import 'result_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int height = 180;
  int weight = 50;
  int age = 30;

  Gender selectedGender;
  void _setGendertoMale() {
    setState(() {
      selectedGender = Gender.male;
    });
  }

  void _setGendertoFemale() {
    setState(() {
      selectedGender = Gender.female;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyContainer(
                    selectedGender: _setGendertoMale,
                    childCard: MyChildCard(
                      iconType: FontAwesomeIcons.mars,
                      gender: 'Male',
                    ),
                    color: selectedGender == Gender.male
                        ? MyConstant.colorBoxActive
                        : MyConstant.colorBoxInactive,
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    selectedGender: _setGendertoFemale,
                    childCard: MyChildCard(
                      gender: 'Female',
                      iconType: FontAwesomeIcons.venus,
                    ),
                    color: selectedGender == Gender.female
                        ? MyConstant.colorBoxActive
                        : MyConstant.colorBoxInactive,
                  ),
                )
              ],
            ),
          ),

          //Height area
          Expanded(
            child: MyContainer(
              childCard: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: MyConstant.lableTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: MyConstant.lableBoldTextStyle,
                      ),
                      Text('cm')
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor:
                          MyConstant.childCardSliderActiveTrackColor,
                      inactiveTrackColor:
                          MyConstant.childCardSliderInactiveColor,
                      thumbColor: MyConstant.childCardSliderThumbActiveColor,
                      overlayColor: MyConstant.childCardSliderOverlayColor,
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newVal) {
                        setState(() {
                          height = newVal.round();
                        });
                      },
                    ),
                  )
                ],
              ),
              color: MyConstant.colorBoxInactive,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: MyContainer(
                    childCard: MyIncrementalCard(
                      title: 'WEIGHT',
                      startingValue: weight,
                      addButton: () {
                        setState(() {
                          weight++;
                        });
                      },
                      subtractButton: () {
                        setState(() {
                          weight--;
                        });
                      },
                    ),
                    color: MyConstant.colorBoxInactive,
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    childCard: MyIncrementalCard(
                      title: 'AGE',
                      startingValue: age,
                      addButton: () {
                        setState(() {
                          age++;
                        });
                      },
                      subtractButton: () {
                        setState(() {
                          age--;
                        });
                      },
                    ),
                    color: MyConstant.colorBoxInactive,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onPress: () {
              BMICalculator bmi = BMICalculator(height: height, weight: weight);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    resultText: bmi.calculateBMI(),
                    interpretationResult: bmi.getInterpretation(),
                    bmiResult: bmi.getResult(),
                  ),
                ),
              );
            },
            text: 'CALCULATE YOUR BMI',
          ),
        ],
      ),
    );
  }
}
