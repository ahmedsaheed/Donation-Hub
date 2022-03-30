import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdg_app2/screens/user_profile/component/profile_builder.dart';
import 'package:sdg_app2/screens/user_profile/component/profile_buttons.dart';
import 'package:sdg_app2/screens/user_profile/component/user_details.dart';
import 'package:sdg_app2/screens/user_profile/component/donate_tracker.dart';
import 'package:sdg_app2/screens/user_profile/component/user_edit_profile.dart';
import 'package:sdg_app2/screens/user_profile/component/user_info.dart';
import '../../../provider/google_signIn.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const User user = UserPreferences.myUser;

    Widget buildUpgradeButton() => ButtonWidget(
        text: AppLocalizations.of(context)!.createaccount,
        onClicked: () {
          final provider =
              Provider.of<GoogleSignInProvider>(context, listen: false);
          provider.googleLogin();
        });

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
          middle: Text(
        AppLocalizations.of(context)!.profile,
      )),
      child: Builder(
        builder: (context) => Scaffold(
          body: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 24),
              ProfileWidget(
                imagePath: user.imagePath,
                onClicked: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => EditProfilePage()),
                  );
                },
              ),
              const SizedBox(height: 24),
              buildName(user),
              const SizedBox(height: 24),
              Center(child: buildUpgradeButton()),
              const SizedBox(height: 24),
              NumbersWidget(),
              const SizedBox(height: 48),
              buildAbout(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildName(User user) => Column(
        children: [
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          const SizedBox(height: 4),
          Text(
            user.email,
            style: const TextStyle(color: Colors.grey),
          )
        ],
      );
  Widget buildAbout(context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.aboutt + ' Donation Hub',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              AppLocalizations.of(context)!.goals,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ],
        ),
      );
}
