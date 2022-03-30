import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../components/bottom_nav.dart';
import '../../enums.dart';

class shareTheMeal extends StatelessWidget {
  const shareTheMeal({Key? key}) : super(key: key);
  static String routeName = "/share";

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text("Share The Meal")),
      child: SafeArea(
        child: WebView(
          initialUrl: "https://sharethemeal.org/donate?campaign=ukraine1",
          javascriptMode: JavascriptMode.unrestricted,
        ),
        //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      ),
    );
  }
}
