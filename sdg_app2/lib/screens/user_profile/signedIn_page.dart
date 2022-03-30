import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sdg_app2/screens/user_profile/component/profile_loggedIn.dart';
import 'package:sdg_app2/screens/user_profile/component/profile_page.dart';

class signedIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasData) {
                return const LoggedIn();
              } else if (snapshot.hasError) {
                return const Center(child: Text("Something Went Wrong!"));
              } else {
                return const ProfilePage();
              }
            }),
      );
}
