import 'package:animated_theme_switcher/animated_theme_switcher.dart';

import 'package:flutter/material.dart';
import 'package:sdg_app2/screens/user_profile/component/profile_builder.dart';
import 'package:sdg_app2/screens/user_profile/component/textfield.dart';
import 'package:sdg_app2/screens/user_profile/component/user_details.dart';
import 'package:sdg_app2/screens/user_profile/component/user_info.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => ThemeSwitchingArea(
        child: Builder(
          builder: (context) => Scaffold(
            body: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              physics: const BouncingScrollPhysics(),
              children: [
                ProfileWidget(
                  imagePath: user.imagePath,
                  isEdit: true,
                  onClicked: () async {},
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Full Name',
                  text: user.name,
                  onChanged: (String newName) {
                    user.name == newName;
                  },
                ),
                const SizedBox(height: 24),
                TextFieldWidget(
                  label: 'Email',
                  text: user.email,
                  onChanged: (email) {},
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      );
}
