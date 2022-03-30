import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../components/bottom_nav.dart';
import '../../enums.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class sdg extends StatelessWidget {
  const sdg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text("UN SDG")),
      child: SafeArea(
        child: WebView(
          initialUrl: AppLocalizations.of(context)!.un,
          javascriptMode: JavascriptMode.unrestricted,
        ),
        //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      ),
    );
  }
}
