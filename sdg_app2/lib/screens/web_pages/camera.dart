import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../components/bottom_nav.dart';
import '../../enums.dart';

class camera extends StatelessWidget {
  const camera({Key? key}) : super(key: key);
  // static String routeName = "/globalGiving";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text("Camera Education")),
      child: SafeArea(
        child: WebView(
          initialUrl: AppLocalizations.of(context)!.camera,
          javascriptMode: JavascriptMode.unrestricted,
        ),
        //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.give),
      ),
    );
  }
}
