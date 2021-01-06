import 'package:bmi_calculator/constant_vals.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyIncrementalCard extends StatelessWidget {
  final String title;
  final int startingValue;
  final Function addButton;
  final Function subtractButton;

  MyIncrementalCard(
      {this.title, this.startingValue, this.addButton, this.subtractButton});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          title,
          style: MyConstant.lableTextStyle,
        ),
        Text(
          startingValue.toString(),
          style: MyConstant.lableBoldTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundedIconButton(
              icon: FontAwesomeIcons.plus,
              onPressed: addButton,
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundedIconButton(
              icon: FontAwesomeIcons.minus,
              onPressed: subtractButton,
            ),
          ],
        )
      ],
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  RoundedIconButton({this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: MyConstant.childCardCircleIncrement,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 0.0,
      child: Icon(
        icon,
      ),
    );
  }
}
