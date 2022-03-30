import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../components/bottom_nav.dart';
import '../../enums.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class theirWorld extends StatelessWidget {
  const theirWorld({Key? key}) : super(key: key);
  //static String routeName = "/unicef";

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text("Their World")),
      child: SafeArea(
        child: WebView(
          initialUrl: AppLocalizations.of(context)!.theirworld,
          javascriptMode: JavascriptMode.unrestricted,
        ),
        //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.give),
      ),
    );
  }
}
