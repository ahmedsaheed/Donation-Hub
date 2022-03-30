import 'package:flutter/material.dart';
import 'package:sdg_app2/screens/splash/components/body.dart';
import 'package:sdg_app2/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/spllash";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
