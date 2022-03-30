import 'package:flutter/material.dart';
import 'package:sdg_app2/components/bottom_nav.dart';

import '../../../enums.dart';

import '../signedIn_page.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: signedIn(),
      bottomNavigationBar:
          const CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
