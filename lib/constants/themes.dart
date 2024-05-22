import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart'; // 3.) import theme colors

final kPrimaryColor = Color(0xFF843667);
final kSecondaryColor = Color(0xFF022238);
final kThirdColor = Color(0xFFFFDCBC);
const kLightBackground = Color(0xFFE8F6FB);
const kWhiteColor = Colors.white;
const kBlackColor = Colors.black;

class AppTheme {
  // 10.)
  static const kBigTitle = TextStyle(
    color: kWhiteColor,
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static final kHeadingOne = TextStyle(
    // 15.)
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final kSeeAllText = TextStyle(color: kPrimaryColor);

  static final kBodyText = TextStyle(
    // 15.)
    color: Colors.grey.shade400,
    fontSize: 14,
  );

  static const kCardTitle = // 18.)
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
}
