import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF00a3ad);
const kPrimaryLightColor = Color(0xFFE9ECF5);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF00a3ad), Color(0xFFE9ECF5)],
);
const kSecondaryColor = Color(0xFF993955);
const kTextColor = Color(0xFF133C55);

const kAnimationDuration = Duration(milliseconds: 200);

List<Map<String, String>> splashData = [
  {
    "text": "Welcome to Optus. Let's shop",
    "imageUrl": "assets/images/image1.jpg"
  },
  {
    "text": "We help people connect with stores \naround Australia",
    "imageUrl": "assets/images/image2.jpg"
  },
  {
    "text": "We show the easy way to shop. \nJust stay at home with us.",
    "imageUrl": "assets/images/image3.jpg"
  }
];
