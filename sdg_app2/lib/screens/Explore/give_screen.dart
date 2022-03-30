import 'package:flutter/material.dart';

import '../../components/bottom_nav.dart';
import '../../enums.dart';
import 'components/body.dart';
import 'components/donation_data.dart';

class GiveScreen extends StatelessWidget {
  static String routeName = "/explore";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GivePage(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
