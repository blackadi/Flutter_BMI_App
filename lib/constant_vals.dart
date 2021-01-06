import 'package:flutter/cupertino.dart';

enum Gender { male, female }

class MyConstant {
  static const double bottomContainerHeight = 60.0;
  static const Color colorBoxActive = Color(0xFF1d1f33);
  static const Color colorBoxInactive = Color(0xFF101427);
  static const Color bottomContainerColor = Color(0xFFea1556);
  static const Color childCardTextColor = Color(0xFF8e8e99);
  static const Color childCardCircleIncrement = Color(0xFF404455);
  static const double childCardIconSize = 80.0;
  static const double childCardFontSize = 20.0;
  static const double childCardBoldFontSize = 50.0;

  static const Color childCardTextBoldColor = Color(0xFFfffffd);

  //Slider
  static const Color childCardSliderThumbActiveColor = Color(0xFFea1556);
  static const Color childCardSliderInactiveColor = Color(0xFF888895);
  static const Color childCardSliderActiveTrackColor = Color(0xFFfdffff);
  static const Color childCardSliderDisabledActiveTrackColor =
      Color(0xFF888895);
  static const Color childCardSliderOverlayColor = Color(0x29ea1556);
  //******

  static const TextStyle lableTextStyle = TextStyle(
      color: MyConstant.childCardTextColor,
      fontSize: MyConstant.childCardFontSize);
  static const TextStyle lableBoldTextStyle = TextStyle(
      color: MyConstant.childCardTextBoldColor,
      fontSize: MyConstant.childCardBoldFontSize,
      fontWeight: FontWeight.w900);
  static const TextStyle kbuttonLargeText = TextStyle(
    color: MyConstant.childCardTextBoldColor,
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
  );

  static const TextStyle kresultText = TextStyle(
    color: Color(0xFF3eb573),
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );

  static const TextStyle kBMIText = TextStyle(
    fontSize: 100.0,
    fontWeight: FontWeight.bold,
  );
}
