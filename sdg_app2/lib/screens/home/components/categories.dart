import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../Explore/give_screen.dart';

// ignore: camel_case_types
class categories extends StatelessWidget {
  const categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {
        "icon": "assets/icons/water2.svg",
        "text": AppLocalizations.of(context)!.water
      },
      {
        "icon": "assets/icons/food.svg",
        "text": AppLocalizations.of(context)!.food
      },
      {
        "icon": "assets/icons/education.svg",
        "text": AppLocalizations.of(context)!.school
      },
      {
        "icon": "assets/icons/poverty.svg",
        "text": AppLocalizations.of(context)!.poverty
      },
      {
        "icon": "assets/icons/health.svg",
        "text": AppLocalizations.of(context)!.health
      },
    ];
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ignore: todo
          ...List.generate(
            categories.length,
            (index) => categoryCard(
              icon: categories[index]["icon"],
              text: categories[index]["text"],
              press: () => Navigator.pushNamed(context, GiveScreen.routeName),
            ),
          ), //TODO app path for preess
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class categoryCard extends StatelessWidget {
  const categoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: SizedBox(
        width: getProportionateScreenWidth(55),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(15)),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: SvgPicture.asset(icon),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
