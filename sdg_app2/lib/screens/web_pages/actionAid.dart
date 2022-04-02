import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class actionAid extends StatelessWidget {
  const actionAid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(middle: Text("Action Aid")),
      child: SafeArea(
        child: WebView(
          initialUrl: AppLocalizations.of(context)!.actionaid,
          javascriptMode: JavascriptMode.unrestricted,
        ),
        //bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.give),
      ),
    );
  }
}
