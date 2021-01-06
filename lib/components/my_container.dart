//This is the main Container where the card is divided

import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Color color;
  final Widget childCard;
  final Function selectedGender;

  MyContainer({@required this.color, this.childCard, this.selectedGender});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: selectedGender,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
