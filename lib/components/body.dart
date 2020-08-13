import 'package:flutter/material.dart';
import 'splash_content.dart';
import 'package:flutter_onboard_screen/constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              currentPage = value;
            });
          },
          itemCount: splashData.length,
          itemBuilder: (context, index) => SplashContent(
            text: splashData[index]["text"],
            imageUrl: splashData[index]["imageUrl"],
            currentPage: currentPage,
          ),
        ),
      ),
    );
  }
}
