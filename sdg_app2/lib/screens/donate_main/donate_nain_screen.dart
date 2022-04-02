import 'package:flutter/material.dart';
import 'package:sdg_app2/screens/donate_main/main_donation.dart';

import '../../components/bottom_nav.dart';
import '../../enums.dart';

class DonateMain extends StatelessWidget {
  static String routeName = "/give";

  DonateMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: donateMain(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.give),
    );
  }
}
