import 'package:flutter/material.dart';
import '../constant_vals.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onPress;

  BottomButton({@required this.text, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: MyConstant.bottomContainerHeight,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        child: Center(
          child: Text(
            text,
            style: MyConstant.kbuttonLargeText,
          ),
        ),
        color: MyConstant.bottomContainerColor,
      ),
    );
  }
}
