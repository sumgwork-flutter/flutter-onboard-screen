import 'package:flutter/material.dart';
import 'package:flutter_onboard_screen/components/body.dart';
import 'package:flutter_onboard_screen/size_config.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
    );
  }
}
