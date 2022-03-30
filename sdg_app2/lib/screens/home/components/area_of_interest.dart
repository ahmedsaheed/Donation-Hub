import 'package:flutter/material.dart';
import 'package:sdg_app2/screens/home/components/section_title.dart';

import '../../../size_config.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class areaOfInterestMain extends StatelessWidget {
  const areaOfInterestMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sectionTitle(
          text: AppLocalizations.of(context)!.areaofinterest,
          press: () {},
        ),
        SizedBox(height: getProportionateScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              areaOfInterest(
                image: "assets/images/food.jpg",
                category: AppLocalizations.of(context)!.food,
                press: () {},
              ),
              areaOfInterest(
                image: "assets/images/water.jpg",
                category: AppLocalizations.of(context)!.water,
                press: () {},
              ),
              areaOfInterest(
                image: "assets/images/health.jpg",
                category: AppLocalizations.of(context)!.health,
                press: () {},
              ),
              areaOfInterest(
                image: "assets/images/education2.jpg",
                category: AppLocalizations.of(context)!.school,
                press: () {},
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class areaOfInterest extends StatelessWidget {
  const areaOfInterest({
    Key? key,
    required this.category,
    required this.image,
    //required this.numOfAreas,
    required this.press,
  }) : super(key: key);
  final String category, image;
  //final int numOfAreas;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(150),
        height: getProportionateScreenWidth(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      const Color(0xFF343434).withOpacity(0.4),
                      const Color(0xFF343434).withOpacity(0.15),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenHeight(15),
                    vertical: getProportionateScreenWidth(10)),
                child: Text.rich(TextSpan(
                    style: const TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "$category\n",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(text: AppLocalizations.of(context)!.foreveryone),
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
