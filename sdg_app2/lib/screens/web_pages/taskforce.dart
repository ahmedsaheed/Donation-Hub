import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../components/bottom_nav.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../enums.dart';

class taskForce extends StatelessWidget {
  const taskForce({Key? key}) : super(key: key);
  // static String routeName = "/globalGiving";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:
          CupertinoNavigationBar(middle: Text("Global Health Task Force")),
      child: SafeArea(
        child: WebView(
          initialUrl: AppLocalizations.of(context)!.taskforce,
          javascriptMode: JavascriptMode.unrestricted,
        ),
        //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.give),
      ),
    );
  }
}
