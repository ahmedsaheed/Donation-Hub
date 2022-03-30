import 'package:flutter/material.dart';
import 'package:sdg_app2/screens/home/components/locations.dart';
import 'package:sdg_app2/screens/home/components/second_donation_card.dart';

import 'package:sdg_app2/size_config.dart';
import 'area_of_interest.dart';
import 'categories.dart';
import 'donation_tracker.dart';
import 'first_donation_card.dart';
import 'homeHeader.dart';

import 'second_donation_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(15)),
            donationTracker(),
            SizedBox(height: getProportionateScreenWidth(15)),
            const categories(),
            SizedBox(height: getProportionateScreenWidth(15)),
            const firstDonationCard(),
            SizedBox(height: getProportionateScreenWidth(25)),
            const areaOfInterestMain(),
            SizedBox(height: getProportionateScreenWidth(20)),
            const secondDonationCard(),
            SizedBox(height: getProportionateScreenWidth(20)),
            const location(),
          ],
        ),
      ),
    );
  }
}
