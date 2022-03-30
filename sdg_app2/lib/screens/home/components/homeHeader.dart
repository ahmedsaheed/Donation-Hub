import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'home_page_head.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(0)),
      child: Row(
        children: const [
          HomePageHead(),
        ],
      ),
    );
  }
}
