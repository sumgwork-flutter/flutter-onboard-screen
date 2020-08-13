import 'package:flutter/material.dart';
import 'package:flutter_onboard_screen/size_config.dart';
import 'package:flutter_onboard_screen/constants.dart';

class SplashContent extends StatelessWidget {
  final String text;
  final String imageUrl;
  final int currentPage;

  SplashContent({this.text, this.imageUrl, this.currentPage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Column(
            children: <Widget>[
              Spacer(),
              Text(
                "OPTUS",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(36.0),
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                text,
                textAlign: TextAlign.center,
              ),
              Spacer(
                flex: 2,
              ),
              Image.asset(
                imageUrl,
                height: getProportionateScreenHeight(265),
                width: getProportionateScreenWidth(265),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20.0),
            ),
            child: Column(
              children: <Widget>[
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    splashData.length,
                    (index) => buildDot(index: index),
                  ),
                ),
                Spacer(flex: 3),
                SizedBox(
                  width: double.infinity,
                  height: getProportionateScreenHeight(56.0),
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    color: kPrimaryColor,
                    onPressed: () {},
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: getProportionateScreenHeight(
                          18.0,
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      width: currentPage == index ? 20 : 6,
      height: 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : kSecondaryColor,
        borderRadius: BorderRadius.circular(3.0),
      ),
    );
  }
}
