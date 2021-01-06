//This is the inside content of the main container

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant_vals.dart';

class MyChildCard extends StatelessWidget {
  final IconData iconType;
  final String gender;

  MyChildCard({@required this.iconType, @required this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconType,
          size: MyConstant.childCardIconSize,
        ),
        SizedBox(height: 15.0),
        Text(
          gender,
          style: MyConstant.lableTextStyle,
        )
      ],
    );
  }
}
