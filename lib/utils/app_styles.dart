import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class Style{
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xffeeedf2);
  static Color orangeColor = const Color(0xff526799);
  static TextStyle textStyle = TextStyle(
    fontSize: 16,
    color: textColor,
    fontWeight: FontWeight.w500
  );
  static TextStyle headLineStyleOne = TextStyle(
    fontSize: 26,
    color: textColor,
    fontWeight: FontWeight.bold
  );
  static TextStyle headLineStyleTwo = TextStyle(
    fontSize: 21,
    color: textColor,
    fontWeight: FontWeight.bold
  );
  static TextStyle headLineStyleThree = TextStyle(
    fontSize: 17,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500
  );
  static TextStyle headLineStyleFour = TextStyle(
    fontSize: 14,
    color: Colors.grey.shade500,
    fontWeight: FontWeight.w500
  );
}